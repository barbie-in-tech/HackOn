import 'package:flutter/material.dart';
import 'package:thrifter_hackon/Screens/drawer_Screen.dart';
import 'package:thrifter_hackon/Screens/home_Screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          HomeScreen(),
        ],),
    );
  }
}
