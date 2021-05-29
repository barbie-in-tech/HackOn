import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:thrifter_hackon/Screens/subCategoryWomen.dart';

import 'package:thrifter_hackon/Screens/subCatergoryMen.dart';
import 'package:thrifter_hackon/widgets/SliverHeader.dart';

bool _isVisible1 = false;
bool _isVisible2 = false;

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          sliverHeader(Icons.navigate_before, "Categories", () {
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
                    Column(
                      children: [
                        CategoryName(
                          category: "Men",
                          iconColor: Colors.black,
                          onPressed: () {
                            setState(() {
                              _isVisible1 = !_isVisible1;
                            });
                          },
                        ),
                        Visibility(
                          visible: _isVisible1,
                          child: _isVisible1 ? MenSubCategory() : Container(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Column(
                      children: [
                        CategoryName(
                          iconColor: Colors.black,
                          category: "Women",
                          onPressed: () {
                            setState(() {
                              _isVisible2 = !_isVisible2;
                            });
                          },
                        ),
                        Visibility(
                          visible: _isVisible2,
                          child: _isVisible2 ? WomenSubCategory() : Container(),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    CategoryName(
                      iconColor: Colors.transparent,
                      category: "Unisex",
                      onPressed: () {
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
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

class MenSubCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MenJeans()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text(
                "Jeans",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15.0, color: Colors.black54),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MenShirt(),
                ),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text(
                "T-shirts and shirts",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15.0, color: Colors.black54),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MenJacket(),
                ),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text(
                "Jackets",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15.0, color: Colors.black54),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MenShoes(),
                ),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text(
                "Shoes",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15.0, color: Colors.black54),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MenAcc(),
                ),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text(
                "Accessories",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15.0, color: Colors.black54),
              ),
            ),
          ),
        ],
      ),
      width: MediaQuery.of(context).size.width * 0.85,
    );
  }
}

class WomenSubCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MaterialButton(
            onPressed: () {},
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text(
                "Tops",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15.0, color: Colors.black54),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WomenJeans(),
                ),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text(
                "Jeans",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15.0, color: Colors.black54),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text(
                "Ethnic Wear",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15.0, color: Colors.black54),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text(
                "Jumpsuits",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15.0, color: Colors.black54),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text(
                "Shoes",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15.0, color: Colors.black54),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text(
                "Purses",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 15.0, color: Colors.black54),
              ),
            ),
          ),
        ],
      ),
      width: MediaQuery.of(context).size.width * 0.85,
    );
  }
}

class CategoryName extends StatelessWidget {
  final Function onPressed;
  final String category;
  final Color iconColor;
// final bool isVisible;
  CategoryName({this.category, this.onPressed, this.iconColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        onPressed: onPressed,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  category,
                  style: TextStyle(fontSize: 15.0, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                Icon(
                  Icons.arrow_drop_down,
                  size: 32.0,
                  color: iconColor,
                ),
              ],
            ),
          ),
          width: MediaQuery.of(context).size.width * 0.85,
          height: MediaQuery.of(context).size.height * 0.09,
          decoration: BoxDecoration(
            color: Color(0xFF00BDBD).withOpacity(0.2),
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
      ),
    );
  }
}

/*final _firestore = FirebaseFirestore.instance;

class ClosetStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestore.collection('closets').snapshots(),
      //ignore: missing_return
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.lightBlueAccent,
            ),
          )
        }
      },
    );
  }
}
*/
