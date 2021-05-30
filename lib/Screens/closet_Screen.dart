import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:thrifter_hackon/Screens/closet_closet_screen.dart';
import 'package:thrifter_hackon/utilities/db_object.dart';
import 'package:thrifter_hackon/widgets/SliverHeader.dart';

class ClosetScreen extends StatefulWidget {
  @override
  _ClosetScreenState createState() => _ClosetScreenState();
}

class _ClosetScreenState extends State<ClosetScreen> {
  @override
  Widget build(BuildContext context) {
    final User user1 = new User(
        'rahul123@gmail.com', 'Rahul', "Rahul's Closet", true, userProducts);
    final User user2 = new User(
        'wamika123@gmail.com', 'Wamika', "Wamika's Closet", true, userProducts);
    final User user3 = new User('sarthak123@gmail.com', 'Sarthak',
        "Sarthak's Closet", true, userProducts);
    final User user4 = new User('shubham123@gmail.com', 'Shubham',
        "Shubham's Closet", true, userProducts);

    final users = [user1, user2, user3, user4];

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          sliverHeader(context, Icons.navigate_before, "All Closet", () {
            Navigator.pop(context);
          }),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(top: 24.0, bottom: 10.0),
                  child: Column(
                    children: [
                      MaterialButton(
                        elevation: 5.0,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.1,
                          decoration: BoxDecoration(
                            color: Color(0xFF00BDBD).withOpacity(0.2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              users[index].closetName,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  settings:
                                      RouteSettings(arguments: users[index]),
                                  builder: (context) => ClomsetScreen()));
                        },
                      ),
                    ],
                  ),
                );
              },
              childCount: users.length,
            ),
          ),
        ],
      ),
    );
  }
}
