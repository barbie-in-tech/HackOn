import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:thrifter_hackon/constants.dart';
import 'package:thrifter_hackon/widgets/SliverHeader.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> titles = [
    'Men',
    'Women',
    'Kids',
    'something',
    'something2',
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          sliverHeader("Hey Random!"),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: mediaQuery.height * 0.02,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: kHorizontalListHeight,
                      child: ListView.separated(
                        itemCount: 5,
                        shrinkWrap: true,
                        padding: EdgeInsets.symmetric(
                          horizontal: 25.0,
                          vertical: 5.0,
                        ),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return HorizontalListButton(
                            text: titles[index],
                            onPressed: () {},
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: mediaQuery.width * 0.05,
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: mediaQuery.height * 0.01,
                    ),
                    ThriftStoreDescriptionBox(
                      thriftDescription:
                          'Some Text About Thrift Stores in Multiple animated container',
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Check these out!',
                        style: kHeadingTextStyle,
                      ),
                    ),
                    GridView.count(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.all(20.0),
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: [
                        GridContainer(
                          category: 'tops.jpeg',
                          title: 'TOPS',
                          onPressed: () {
                            print('here');
                          },
                        ),
                        GridContainer(
                          category: 'party_wear.jpg',
                          title: 'PARTY WEAR',
                          onPressed: () {
                            print('here');
                          },
                        ),
                        GridContainer(
                          category: 'party_wear.jpg',
                          title: 'PARTY WEAR',
                          onPressed: () {
                            print('here');
                          },
                        ),
                        GridContainer(
                          category: 'party_wear.jpg',
                          title: 'PARTY WEAR',
                          onPressed: () {
                            print('here');
                          },
                        ),
                      ],
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

class GridContainer extends StatelessWidget {
  GridContainer(
      {@required this.category,
      @required this.title,
      @required this.onPressed});

  final String category;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage('images/$category'),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0.1, sigmaY: 0.1),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.45)),
            child: Text(
              title,
              style: kCategoryGridTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class ThriftStoreDescriptionBox extends StatelessWidget {
  ThriftStoreDescriptionBox({@required this.thriftDescription});

  final String thriftDescription;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        padding: EdgeInsets.all(30.0),
        alignment: Alignment.center,
        decoration: kDescriptiveBoxStyle,
        child: Text(
          thriftDescription,
          style: kBodyTextStyle.copyWith(fontSize: 22.0),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class HorizontalListButton extends StatelessWidget {
  HorizontalListButton({@required this.text, @required this.onPressed});

  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      padding: EdgeInsets.all(15.0),
      fillColor: kHorizontalListButtonColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45.0)),
      onPressed: onPressed,
      child: Container(
        child: Text(
          text,
          style: kBodyTextStyle,
        ),
      ),
    );
  }
}
