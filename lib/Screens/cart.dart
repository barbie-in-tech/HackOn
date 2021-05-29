import 'package:flutter/material.dart';
import 'package:thrifter_hackon/widgets/SliverHeader.dart';
import 'home_Screen.dart';

enum SingingCharacter { paytm, upi, bank }

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  SingingCharacter _character = SingingCharacter.paytm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          sliverHeader(Icons.navigate_before, 'Shopping Cart', () {
            Navigator.pop(context);
          }),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Container(
                            color: Colors.grey,
//              child: Image(image: ,),
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.25,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: Text(
                              "Jeans",
                              style: TextStyle(
                                //color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                          ),
                          Text(
                            "Rs. 450",
                            style: TextStyle(
                              //color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.15,
                        ),
                        SizedBox(
                          child: Container(
                            height: 2,
                            width: MediaQuery.of(context).size.width * 0.7,
                            color: Color(0xff693DC5),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.15,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Container(
                            color: Colors.grey,
//              child: Image(image: ,),
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.25,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: Text(
                              "Shirt",
                              style: TextStyle(
                                //color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                          ),
                          Text(
                            "Rs. 250",
                            style: TextStyle(
                              //color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.15,
                        ),
                        SizedBox(
                          child: Container(
                            height: 2,
                            width: MediaQuery.of(context).size.width * 0.7,
                            color: Color(0xff693DC5),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.15,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Container(
                            color: Colors.grey,
//              child: Image(image: ,),
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.25,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: Text(
                              "Purse",
                              style: TextStyle(
                                //color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                          ),
                          Text(
                            "Rs. 50",
                            style: TextStyle(
                              //color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.15,
                        ),
                        SizedBox(
                          child: Container(
                            height: 2,
                            width: MediaQuery.of(context).size.width * 0.7,
                            color: Color(0xff693DC5),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.15,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Subtotal",
                            style: TextStyle(
                              //color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(
                            width: 50.0,
                          ),
                          Text(
                            "Rs. 1200",
                            style: TextStyle(
                              //color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivery Charge",
                            style: TextStyle(
                              //color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(
                            width: 50.0,
                          ),
                          Text(
                            "Rs. 100",
                            style: TextStyle(
                              //color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(
                              //color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(
                            width: 50.0,
                          ),
                          Text(
                            "Rs. 1300",
                            style: TextStyle(
                              //color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "Please select payment method :",
                        style: TextStyle(
                          //color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text('Paytm'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.paytm,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('UPI'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.upi,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    ListTile(
                      title: const Text('Bank Transfer'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.bank,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    MaterialButton(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xff693DC5),
                                    Color(0xffFF88E2),
                                  ])),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              "Place order",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {})
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
