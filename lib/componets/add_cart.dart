import 'package:dro/constants.dart';
import 'package:dro/model/product.dart';
import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  final Product product;
  const AddToCart({
    @required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: kDefaultPaddin),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: Colors.white,
              ),
            ),
            child: IconButton(
              icon: Icon(Icons.add_shopping_cart_rounded),
              onPressed: () {
                //Todo: Add item to cart
              },
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: droPurple,
                onPressed: () {},
                child: Text(
                  "Add to Cart".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
