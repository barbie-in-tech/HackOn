import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thrifter_hackon/widgets/Buttons.dart';

class ProductDetailScreen extends StatefulWidget {
  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final List productImages = [
    "https://www.thoughtco.com/thmb/C7RiS4QG5TXcBG2d_Sh9i4hFpg0=/3620x2036/smart/filters:no_upscale()/close-up-of-clothes-hanging-in-row-739240657-5a78b11f8e1b6e003715c0ec.jpg",
    "https://images.squarespace-cdn.com/content/v1/5442b6cce4b0cf00d1a3bef2/1593123550394-AU3A29QJ3HU2BEE97O62/ke17ZwdGBToddI8pDm48kMh3mVmBaCAeGwqCLG3iONRZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZamWLI2zvYWH8K3-s_4yszcp2ryTI0HqTOaaUohrI8PIarJWwnumkapRz_nmTYj1dpaH2rx--_BA62nv3IYPJxMKMshLAGzx4R3EDFOm1kBS/American-Made-Clothing-American-Trench",
    "https://images.squarespace-cdn.com/content/v1/5442b6cce4b0cf00d1a3bef2/1596139091521-K8PDSWTUFK20VW0T7NFD/ke17ZwdGBToddI8pDm48kA7e4wRd4ZDldd6PbS9BVI5Zw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpyvXn8XMwMq-aCqUEV8fAVtSaljtELrLyv8fOgO87iUSoS6gU-xB5T__qABPCYgFO0/Organic-Clothing-Brands-MATE-The-Label",
  ];

  int selectedPreviewImage = 0;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      //TODO: App Header
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: mediaQuery.height * 0.4,
              child: Stack(
                children: [
                  Container(
                    height: mediaQuery.height * 0.3,
                    width: double.infinity,
                    alignment: Alignment.center,
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
                    child: Text(
                      "Shirt Dress with Motif",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    bottom: 0,
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          productImages[selectedPreviewImage],
                          fit: BoxFit.fill,
                          width: mediaQuery.width * 0.75,
                          scale: 0.7,
                        ),
                      ),
                      height: mediaQuery.height * 0.2,
                      width: mediaQuery.width * 0.75,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  productImages.length,
                  (index) => imagesPreview(index),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 30.0,
                horizontal: 30.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Price",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "\u20B9 400",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: mediaQuery.height * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 30.0,
              ),
              child: Text(
                "Description",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 30.0,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Size",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Large (L)",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Divider(thickness: 1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Color",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Black",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: mediaQuery.height * 0.03),
            Buttons(
              buttonText: "BUY NOW",
              textColor: Color.fromRGBO(0, 189, 189, 1),
              buttonColor: Color.fromRGBO(0, 189, 189, 0.2),
            ),
            Buttons(
              buttonText: "ADD TO CART",
              textColor: Colors.white,
              buttonColor: Color.fromRGBO(0, 189, 189, 1),
            ),
          ],
        ),
      ),
    );
  }

  InkWell imagesPreview(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedPreviewImage = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            border: Border.all(
              color: selectedPreviewImage == index
                  ? Color.fromRGBO(0, 189, 189, 1)
                  : Colors.transparent,
              width: 2,
            ),
          ),
          height: MediaQuery.of(context).size.height * 0.075,
          width: MediaQuery.of(context).size.width * 0.15,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(13),
            child: Image.network(
              productImages[index],
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
