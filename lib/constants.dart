import 'dart:ui';

import 'package:dro/model/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Color grey = Color(0xff909090);
Color darkPurple = Color(0xff7B4397);
Color droPurple = Color(0xff9F5DE2);
Color droTurquoise = Color(0xff0CB8B6);
double kDefaultPaddin = 20.0;

class ProductCard extends StatelessWidget {
  final Product products;
  final Function press;

  ProductCard({this.products, this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Card(
        elevation: 2.0,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 145,
                        child: Hero(
                          tag: "${products.name}",
                          child: Image.asset(
                            products.image,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 10),
                    Text(
                      products.name,
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                )),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 10),
                    Text(
                      products.title,
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                          color: grey, borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "\₦${products.price}",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                )),
              ],
            ),
            width: 200,
            height: 200,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
