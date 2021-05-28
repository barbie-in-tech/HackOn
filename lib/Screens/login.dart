import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:thrifter_hackon/Screens/home_Screen.dart';
import 'package:thrifter_hackon/constants.dart';
import 'package:uuid/uuid.dart';

import '../main.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.deepPurpleAccent,
              Colors.pinkAccent,
            ],
          ),
        ),
        child: Center(
          child: MaterialButton(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.purple.shade200.withAlpha(86),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Login",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              onPressed: () async {
                setState(() {
                  userId = Uuid().v4();
                  isDrawerOpen = false;
                });
                try {
                  await FirebaseFirestore.instance
                      .collection("Users")
                      .doc(userId)
                      .set({
                    "userId": userId,
                  });
                } catch (err) {
                  print(err);
                }
                Navigator.of(context).pushReplacementNamed(mainScreen);
              }),
        ),
      ),
    );
  }
}
