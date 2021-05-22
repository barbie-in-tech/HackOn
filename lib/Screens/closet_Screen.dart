import 'dart:ui';

import 'package:flutter/material.dart';

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
          SliverAppBar(
            backgroundColor: Colors.purple,
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            leading: null,
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    //Search
                  }),
              IconButton(
                  icon: Icon(Icons.shopping_cart_outlined),
                  onPressed: () {
                    //Shop
                  }),
            ],
            expandedHeight: 120.0,
            stretch: true,
            floating: true,
            pinned: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xff693DC5),
                    Color(0xffFF88E2),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: FlexibleSpaceBar(
                title: Text('All Closets'),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      //color: Color(0xFF00BDBD).withOpacity(0.2),
                      width: 360.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF00BDBD).withOpacity(0.2),
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                  ],
                );
              },
              childCount: 20,
            ),
          ),
        ],
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
