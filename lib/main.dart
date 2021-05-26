import 'package:flutter/material.dart';

import 'package:thrifter_hackon/Screens/ProductDetail_Screen.dart';
import 'package:thrifter_hackon/Screens/closet_Screen.dart';
import 'package:thrifter_hackon/Screens/home_Screen.dart';
import 'package:thrifter_hackon/Screens/profile.dart';
import './Screens/login.dart';
import 'package:thrifter_hackon/constants.dart';

import 'Screens/cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "MontserratMed"),
      initialRoute: login,
      routes: {
        proDetail: (_) => ProductDetailScreen(),
        homeScreen: (_) => HomeScreen(),
        closetScreen: (_) => ClosetScreen(),
        shoppingcart: (_) => ShoppingCart(),
        login: (_) => Login(),
        profile: (_) => ProfileScreen(),
      },
    );
  }
}
