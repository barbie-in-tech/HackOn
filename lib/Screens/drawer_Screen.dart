import 'package:flutter/material.dart';
import 'package:thrifter_hackon/Screens/home_Screen.dart';
import 'package:thrifter_hackon/constants.dart';

import '../main.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.0),
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
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 30.0,
                ),
                CircleAvatar(
                  radius: 25,
                  foregroundImage: NetworkImage(
                      'https://files.thehandbook.com/uploads/2014/10/Ed-Sheeran.jpg'),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Name',
                      style: kHeadingTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    Text(
                      '@username',
                      style: kBodyTextStyle.copyWith(),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                )
              ],
            ),
            Container(
              width: 200.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MenuOption(
                    icon: Icons.person,
                    title: 'Profile',
                    onTap: () {
                      Navigator.pushNamed(context, profile);
                    },
                  ),
                  MenuOption(
                    icon: Icons.category,
                    title: 'Categories',
                    onTap: () {
                      Navigator.pushNamed(context, closetScreen);
                    },
                  ),
                  MenuOption(
                    icon: Icons.shopping_bag,
                    title: 'My Orders',
                    onTap: () {
                      Navigator.pushNamed(context, shoppingcart);
                    },
                  ),
                  MenuOption(
                    icon: Icons.star,
                    title: 'All Closets',
                    onTap: () {
                      Navigator.pushNamed(context, closetScreen);
                    },
                  ),
                  MenuOption(
                    icon: Icons.handyman,
                    title: 'Become a Thrifter',
                    onTap: () {},
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  if (!isDrawerOpen) {
                    xOffset = 230;
                    yOffset = 150;

                    scaleFactor = 0.7;
                    isDrawerOpen = true;
                  } else {
                    xOffset = 0;
                    yOffset = 0;

                    scaleFactor = 1;
                    isDrawerOpen = false;
                  }
                  userId = null;
                });

                Navigator.pushNamedAndRemoveUntil(
                  context,
                  login,
                  (Route<dynamic> route) => false,
                );
              },
              contentPadding: EdgeInsets.fromLTRB(0, 20, 20, 20),
              leading: Icon(
                Icons.logout,
                size: 30.0,
                color: Colors.white,
              ),
              title: Text(
                'Logout',
                style: kDrawerTextStyle,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MenuOption extends StatelessWidget {
  MenuOption({@required this.icon, @required this.title, @required this.onTap});

  final Function onTap;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.fromLTRB(0, 5, 20, 5),
      onTap: onTap,
      leading: Icon(
        icon,
        color: Colors.white,
        size: 30,
      ),
      tileColor: Colors.transparent,
      title: Text(
        title,
        style: kDrawerTextStyle,
      ),
    );
  }
}
