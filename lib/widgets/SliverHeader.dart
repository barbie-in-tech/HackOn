import 'package:flutter/material.dart';

SliverAppBar sliverHeader(String title) {
  return SliverAppBar(
    backgroundColor: Colors.purple,
    shape: ContinuousRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(50),
        bottomRight: Radius.circular(50),
      ),
    ),
    leading: null,
    actions: <Widget>[
      IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            //Search
          }),
      IconButton(
          icon: Icon(Icons.shopping_cart_outlined),
          onPressed: () {
            //Shop
          }),
    ],
    expandedHeight: 160.0,
    stretch: true,
    floating: true,
    pinned: true,
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color(0xff693DC5),
            Color(0xffFF88E2),
          ],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: FlexibleSpaceBar(
        title: Text(
          title,
          style: TextStyle(fontSize: 25.0),
        ),
      ),
    ),
  );
}
