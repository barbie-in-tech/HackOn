import 'package:flutter/material.dart';

const double kHorizontalListHeight = 60.0;
const kHorizontalListButtonColor = Color(0xFF00BDBD);
const kBodyTextStyle = TextStyle(
  fontWeight: FontWeight.w600,
  color: Colors.white,
  fontSize: 16.0,
);

const kHeadingTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 28.0,
  fontWeight: FontWeight.bold,
);

const kCategoryGridTextStyle = TextStyle(
  letterSpacing: 2.5,
  color: Colors.black,
  fontSize: 24.0,
  fontStyle: FontStyle.italic,
  fontWeight: FontWeight.w900,
);
final kDescriptiveBoxStyle = BoxDecoration(
  shape: BoxShape.rectangle,
  borderRadius: BorderRadius.circular(30.0),
  color: Color(0xFF9E6FFF),
);

List<Map> drawerItems = [
  {
    'icon': Icons.person,
    'title': 'Profile',
  },
  {
    'icon': Icons.person,
    'title': 'Profile',
  },
  {
    'icon': Icons.person,
    'title': 'Profile',
  },
  {
    'icon': Icons.person,
    'title': 'Profile',
  },
  {
    'icon': Icons.person,
    'title': 'Profile',
  },
];
const pi = 180;
const kDrawerTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 22,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold);

String homeScreen = "/homeScreen";
String proDetail = "/productDetailScreen";
String closetScreen = "/closetScreen";
String shoppingcart = "/cart.dart";
String login = "/login.dart";
String profile = "/profile.dart";
String mainScreen = "/main_Screen.dart";
