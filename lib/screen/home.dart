import 'package:dro/constants.dart';
import 'package:dro/model/product.dart';
import 'package:dro/screen/product_detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                icon: Icon(
                  Icons.double_arrow_rounded,
                  color: grey,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.filter_alt_sharp,
                  color: grey,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.search_off_sharp,
                  color: grey,
                ),
                onPressed: () {}),
          ],
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: StaggeredGridView.countBuilder(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      itemCount: drug.length,
                      itemBuilder: (context, index) {
                        return ProductCard(
                          products: drug[index],
                          press: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DrugDetailsScreen(
                                  product: drug[index],
                                ),
                              )),
                        );
                      },
                      staggeredTileBuilder: (index) => StaggeredTile.fit(1)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
