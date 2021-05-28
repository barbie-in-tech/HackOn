import 'dart:ui';

import 'package:flutter/material.dart';
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
                    Container(
                   width: MediaQuery.of(context).size.width * 0.85,
          height: MediaQuery.of(context).size.height * 0.09,
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

