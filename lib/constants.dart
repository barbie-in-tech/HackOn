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
  fontSize: 20,
  fontWeight: FontWeight.bold,
);

String homeScreen = "/homeScreen";
String proDetail = "/productDetailScreen";
String closetScreen = "/closetScreen";
String shoppingcart = "/cart";
String login = "/authScreen";
String profile = "/profile";
String mainScreen = "/main_Screen";

SnackBar snackBar(
    BuildContext ctx,
    String message,
    String actionLabel,
    Function press,
    ) {
  final snackBar = SnackBar(
    content: Text(message),
    action: SnackBarAction(
      label: actionLabel,
      onPressed: press,
    ),
  );
  return snackBar;
}

void errorDialog(BuildContext ctx, String errorMessage) {
  showDialog(
    context: ctx,
    builder: (ctx) => AlertDialog(
      title: Text("An ERROR Occurred"),
      content: Text(errorMessage),
      actions: [
        TextButton(
          child: Text("OK"),
          onPressed: () {
            Navigator.of(ctx).pop();
          },
        ),
      ],
    ),
  );
}

