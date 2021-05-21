import 'package:flutter/material.dart';
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
      ),
      initialRoute: closetScreen,
      routes: {
        homeScreen: (_) => HomeScreen(),
        closetScreen: (_) => ClosetScreen(),
      },
    );
  }
}
