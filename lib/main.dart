import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thrifter_hackon/Screens/ProductDetail_Screen.dart';
import 'package:thrifter_hackon/Screens/closet_Screen.dart';
import 'package:thrifter_hackon/Screens/home_Screen.dart';
import 'package:thrifter_hackon/Screens/AuthScreen.dart';
import 'package:thrifter_hackon/Screens/main_Screen.dart';
import 'package:thrifter_hackon/Screens/profile.dart';
import 'package:thrifter_hackon/constants.dart';

import 'Provider/authProvider.dart';
import 'Screens/cart.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

// var userId;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // print(userId);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthData(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData(primarySwatch: Colors.blue, fontFamily: "MontserratMed"),
        initialRoute: mainScreen,
        routes: {
          proDetail: (_) => ProductDetailScreen(),
          homeScreen: (_) => HomeScreen(),
          closetScreen: (_) => ClosetScreen(),
          shoppingcart: (_) => ShoppingCart(),
          login: (_) => AuthScreen(),
          profile: (_) => ProfileScreen(),
          mainScreen: (_) => MainScreen(),
        },
      ),
    );
  }
}
