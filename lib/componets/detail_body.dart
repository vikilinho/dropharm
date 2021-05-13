import 'package:dro/componets/add_cart.dart';
import 'package:dro/componets/cart_counter_btn.dart';
import 'package:dro/componets/drug_detail.dart';
import 'package:dro/constants.dart';
import 'package:dro/model/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailBody extends StatelessWidget {
  final Product product;

  const DetailBody({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // We get total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: kDefaultPaddin / 2),
                      CounterWithFavBtn(),
                      SizedBox(height: kDefaultPaddin / 2),
                      // DrugDetails(),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DrugDetails extends StatelessWidget {
  const DrugDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Product Details"),
        Row(
          children: [
            ListTile(
              leading: Icon(
                Icons.phone,
                color: droPurple,
              ),
              title: Text(
                "pack size".toUpperCase(),
                style: TextStyle(color: droPurple),
              ),
              subtitle: Text(
                "3X10".toUpperCase(),
                style: TextStyle(color: droPurple),
              ),
            )
          ],
        )
      ],
    );
  }
}
