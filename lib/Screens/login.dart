import 'package:flutter/material.dart';
import 'package:thrifter_hackon/constants.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.deepPurpleAccent,
                      Colors.pinkAccent,
                    ]),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(homeScreen);
            }),
      ),
    );
  }
}
