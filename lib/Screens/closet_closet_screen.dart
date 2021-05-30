import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:thrifter_hackon/Screens/ProductDetail_Screen.dart';
import 'package:thrifter_hackon/Screens/cart.dart';
import 'package:thrifter_hackon/utilities/db_object.dart';
import 'package:thrifter_hackon/widgets/SliverHeader.dart';

class ClomsetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context).settings.arguments as User;
    ;
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          sliverHeader(context, Icons.navigate_before, user.closetName, () {
            Navigator.pop(context);
          }),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 5.0,
              crossAxisSpacing: 7.0,
              childAspectRatio: 1.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(15.0),
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              settings: RouteSettings(
                                  arguments: user.Products[index]),
                              builder: (context) => ProductDetailScreen()));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(
                        user.Products[index]['productImageURL'][0],
                        fit: BoxFit.fill,
                        width: mediaQuery.width,
                      ),
                    ),
                  ),
                );
              },
              childCount: user.Products.length,
            ),
          ),
        ],
      ),
    );
  }
}
