import 'package:flutter/material.dart';

import 'package:thrifter_hackon/Screens/ProductDetail_Screen.dart';
import 'package:thrifter_hackon/Screens/closet_Screen.dart';
import 'package:thrifter_hackon/Screens/home_Screen.dart';
import 'package:thrifter_hackon/constants.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "MontserratMed"
      ),
      
      initialRoute: homeScreen,

      routes: {
        proDetail: (_) => ProductDetailScreen(),
        homeScreen: (_) => HomeScreen(),
        closetScreen: (_) => ClosetScreen(),
      },
    );
  }
}
