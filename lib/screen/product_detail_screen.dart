import 'package:dro/componets/detail_body.dart';
import 'package:dro/constants.dart';
import 'package:dro/model/product.dart';
import 'package:flutter/material.dart';

class DrugDetailsScreen extends StatelessWidget {
  final Product product;

  DrugDetailsScreen({Key key, this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: darkPurple,
      appBar: buildAppBar(context),
      body: DetailBody(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: darkPurple,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.shopping_basket,
            color: Colors.white,
            size: 40,
          ),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
