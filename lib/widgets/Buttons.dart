import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Color textColor;
  final Color buttonColor;
  final String buttonText;

  Buttons({
    this.textColor,
    this.buttonColor,
    this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 8,
      ),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: MediaQuery.of(context).size.height*0.07,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
