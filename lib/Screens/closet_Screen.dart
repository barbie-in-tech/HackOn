import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:thrifter_hackon/Screens/closet_closet_screen.dart';
//import 'package:thrifter_hackon/utilities/db_object.dart';
import 'package:thrifter_hackon/widgets/SliverHeader.dart';

class ClosetScreen extends StatefulWidget {
  @override
  _ClosetScreenState createState() => _ClosetScreenState();
}

class _ClosetScreenState extends State<ClosetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          sliverHeader(Icons.navigate_before, "All Closet", () {
            Navigator.pop(context);
          }),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    MaterialButton(
                      elevation: 5.0,
                      child: Container(
                        width: MediaQuery.of(context).size.width*0.9,
                        height: MediaQuery.of(context).size.height*0.1,
                        decoration: BoxDecoration(
                          color: Color(0xFF00BDBD).withOpacity(0.2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Rahul's Closet",
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ClomsetScreen()));
                      },
                    )
                  ],
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
