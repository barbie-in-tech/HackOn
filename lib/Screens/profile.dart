import 'package:flutter/material.dart';

import '../constants.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List images = [
    "https://www.thoughtco.com/thmb/C7RiS4QG5TXcBG2d_Sh9i4hFpg0=/3620x2036/smart/filters:no_upscale()/close-up-of-clothes-hanging-in-row-739240657-5a78b11f8e1b6e003715c0ec.jpg",
    "https://images.squarespace-cdn.com/content/v1/5442b6cce4b0cf00d1a3bef2/1593123550394-AU3A29QJ3HU2BEE97O62/ke17ZwdGBToddI8pDm48kMh3mVmBaCAeGwqCLG3iONRZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZamWLI2zvYWH8K3-s_4yszcp2ryTI0HqTOaaUohrI8PIarJWwnumkapRz_nmTYj1dpaH2rx--_BA62nv3IYPJxMKMshLAGzx4R3EDFOm1kBS/American-Made-Clothing-American-Trench",
    "https://images.squarespace-cdn.com/content/v1/5442b6cce4b0cf00d1a3bef2/1596139091521-K8PDSWTUFK20VW0T7NFD/ke17ZwdGBToddI8pDm48kA7e4wRd4ZDldd6PbS9BVI5Zw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpyvXn8XMwMq-aCqUEV8fAVtSaljtELrLyv8fOgO87iUSoS6gU-xB5T__qABPCYgFO0/Organic-Clothing-Brands-MATE-The-Label",
    "https://www.thoughtco.com/thmb/C7RiS4QG5TXcBG2d_Sh9i4hFpg0=/3620x2036/smart/filters:no_upscale()/close-up-of-clothes-hanging-in-row-739240657-5a78b11f8e1b6e003715c0ec.jpg",
    "https://images.squarespace-cdn.com/content/v1/5442b6cce4b0cf00d1a3bef2/1593123550394-AU3A29QJ3HU2BEE97O62/ke17ZwdGBToddI8pDm48kMh3mVmBaCAeGwqCLG3iONRZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZamWLI2zvYWH8K3-s_4yszcp2ryTI0HqTOaaUohrI8PIarJWwnumkapRz_nmTYj1dpaH2rx--_BA62nv3IYPJxMKMshLAGzx4R3EDFOm1kBS/American-Made-Clothing-American-Trench",
    "https://images.squarespace-cdn.com/content/v1/5442b6cce4b0cf00d1a3bef2/1596139091521-K8PDSWTUFK20VW0T7NFD/ke17ZwdGBToddI8pDm48kA7e4wRd4ZDldd6PbS9BVI5Zw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpyvXn8XMwMq-aCqUEV8fAVtSaljtELrLyv8fOgO87iUSoS6gU-xB5T__qABPCYgFO0/Organic-Clothing-Brands-MATE-The-Label",
    "https://www.thoughtco.com/thmb/C7RiS4QG5TXcBG2d_Sh9i4hFpg0=/3620x2036/smart/filters:no_upscale()/close-up-of-clothes-hanging-in-row-739240657-5a78b11f8e1b6e003715c0ec.jpg",
    "https://images.squarespace-cdn.com/content/v1/5442b6cce4b0cf00d1a3bef2/1593123550394-AU3A29QJ3HU2BEE97O62/ke17ZwdGBToddI8pDm48kMh3mVmBaCAeGwqCLG3iONRZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZamWLI2zvYWH8K3-s_4yszcp2ryTI0HqTOaaUohrI8PIarJWwnumkapRz_nmTYj1dpaH2rx--_BA62nv3IYPJxMKMshLAGzx4R3EDFOm1kBS/American-Made-Clothing-American-Trench",
    "https://images.squarespace-cdn.com/content/v1/5442b6cce4b0cf00d1a3bef2/1596139091521-K8PDSWTUFK20VW0T7NFD/ke17ZwdGBToddI8pDm48kA7e4wRd4ZDldd6PbS9BVI5Zw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpyvXn8XMwMq-aCqUEV8fAVtSaljtELrLyv8fOgO87iUSoS6gU-xB5T__qABPCYgFO0/Organic-Clothing-Brands-MATE-The-Label",
    "https://www.thoughtco.com/thmb/C7RiS4QG5TXcBG2d_Sh9i4hFpg0=/3620x2036/smart/filters:no_upscale()/close-up-of-clothes-hanging-in-row-739240657-5a78b11f8e1b6e003715c0ec.jpg",
    "https://images.squarespace-cdn.com/content/v1/5442b6cce4b0cf00d1a3bef2/1593123550394-AU3A29QJ3HU2BEE97O62/ke17ZwdGBToddI8pDm48kMh3mVmBaCAeGwqCLG3iONRZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZamWLI2zvYWH8K3-s_4yszcp2ryTI0HqTOaaUohrI8PIarJWwnumkapRz_nmTYj1dpaH2rx--_BA62nv3IYPJxMKMshLAGzx4R3EDFOm1kBS/American-Made-Clothing-American-Trench",
    "https://images.squarespace-cdn.com/content/v1/5442b6cce4b0cf00d1a3bef2/1596139091521-K8PDSWTUFK20VW0T7NFD/ke17ZwdGBToddI8pDm48kA7e4wRd4ZDldd6PbS9BVI5Zw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpyvXn8XMwMq-aCqUEV8fAVtSaljtELrLyv8fOgO87iUSoS6gU-xB5T__qABPCYgFO0/Organic-Clothing-Brands-MATE-The-Label",
    "https://www.thoughtco.com/thmb/C7RiS4QG5TXcBG2d_Sh9i4hFpg0=/3620x2036/smart/filters:no_upscale()/close-up-of-clothes-hanging-in-row-739240657-5a78b11f8e1b6e003715c0ec.jpg",
    "https://images.squarespace-cdn.com/content/v1/5442b6cce4b0cf00d1a3bef2/1593123550394-AU3A29QJ3HU2BEE97O62/ke17ZwdGBToddI8pDm48kMh3mVmBaCAeGwqCLG3iONRZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZamWLI2zvYWH8K3-s_4yszcp2ryTI0HqTOaaUohrI8PIarJWwnumkapRz_nmTYj1dpaH2rx--_BA62nv3IYPJxMKMshLAGzx4R3EDFOm1kBS/American-Made-Clothing-American-Trench",
    "https://images.squarespace-cdn.com/content/v1/5442b6cce4b0cf00d1a3bef2/1596139091521-K8PDSWTUFK20VW0T7NFD/ke17ZwdGBToddI8pDm48kA7e4wRd4ZDldd6PbS9BVI5Zw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpyvXn8XMwMq-aCqUEV8fAVtSaljtELrLyv8fOgO87iUSoS6gU-xB5T__qABPCYgFO0/Organic-Clothing-Brands-MATE-The-Label",
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: SizedBox(
          height: 95.0,
          width: 95.0,
          child: FloatingActionButton(
            onPressed: () {},
            elevation: 5.0,
            backgroundColor: Colors.white,
            child: Container(
              height: 85.0,
              width: 85.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromRGBO(158, 111, 255, 1),
                    Color.fromRGBO(255, 136, 226, 1),
                  ],
                ),
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 52.0,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //TODO: App Header
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: mediaQuery.height * 0.33,
            child: Stack(
              children: [
                Flexible(
                  flex: 4,
                  child: Container(
                    width: double.infinity,
                    height: mediaQuery.height * 0.25,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromRGBO(158, 111, 255, 1),
                          Color.fromRGBO(255, 136, 226, 1),
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 50.0),
                      height: mediaQuery.height * 0.4,
                      width: double.infinity,
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "Name",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 45,
                              fontWeight: FontWeight.w800,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            "@username",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: mediaQuery.width * 0.36,
                  top: mediaQuery.height * 0.14,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: CircleAvatar(
                        radius: 60.0,
                        foregroundImage: NetworkImage(
                          'https://files.thehandbook.com/uploads/2014/10/Ed-Sheeran.jpg',
                        )),
                  ),
                  height: mediaQuery.height * 0.2,
                  width: mediaQuery.width * 0.75,
                ),
              ],
            ),
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              height: mediaQuery.height * 0.67,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                color: Color(0x3300BDBD),
              ),
              child: GridView.count(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
                crossAxisCount: 3,
                crossAxisSpacing: 17.5,
                mainAxisSpacing: 25.0,
                children: [
                  ...List.generate(
                    images.length,
                    (index) => imagesPreview(index),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: kHorizontalListButtonColor,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 35.0,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 35.0,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  InkWell imagesPreview(int index) {
    return InkWell(
      onTap: () {
        setState(() {});
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Image.network(
          images[index],
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
