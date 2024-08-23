import 'package:flutter/material.dart';
import 'package:meal_time/allfun.dart';

class payament extends StatefulWidget {
  const payament({super.key});

  @override
  State<payament> createState() => _payamentState();
}

class _payamentState extends State<payament> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffdfdfd),
      appBar: AppBar(
        title: text("Payment Details", Colors.black, 25, FontWeight.bold),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                size: 25,
                color: Colors.black,
              )),
        ],
        backgroundColor: Color(0xfffdfdfd),
      ),
      body: details(),
    );
  }
}

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    final scrrr = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: text("Customize your payment method", Colors.black, 16,
                      FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1, // Customize the thickness of the line
                    indent: 15, // Adds left padding to the line
                    endIndent: 15,
                  ),
                ),
                Container(
                  height: 190,
                  width: scrrr.width * 1,
                  decoration:
                      BoxDecoration(color: Color(0xfffdfdfd), boxShadow: [
                    BoxShadow(
                      offset: Offset(-7, 20),
                      color: Colors.grey,
                      blurRadius: 35,
                    )
                  ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 30.0, right: 30, top: 30, bottom: 5),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: text("Cash/Card on delivery", Colors.black,
                                  15, FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 120.0),
                              child: Icon(
                                Icons.check,
                                color: Color(0xfffc6111),
                                size: 25,
                                weight: Checkbox.width,
                                opticalSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 0.5, // Customize the thickness of the line
                        indent: 45, // Adds left padding to the line
                        endIndent: 35,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 55.0, right: 30, top: 05, bottom: 5),
                        child: Row(
                          children: [
                            text(
                                "VISA", Color(0xff286ca0), 25, FontWeight.bold),
                            Padding(
                              padding: EdgeInsets.only(left: 18.0),
                              child: text(".... .... .... 6676", Colors.grey,
                                  16, FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 100,
                                  height: 40,
                                  child: Chip(
                                    backgroundColor: Color(0xfffdfdfd),
                                    side: BorderSide(
                                      color: Color(0xfffc6111),
                                      width: 1.5,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    label: Padding(
                                      padding: EdgeInsets.all(1),
                                      child: Text(
                                        "Delete card",
                                        style: TextStyle(
                                          color: Color(0xfffc6111),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 0.5, // Customize the thickness of the line
                        indent: 45, // Adds left padding to the line
                        endIndent: 35,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 52.0, top: 10),
                        child: GestureDetector(
                            onTap: () {},
                            child: text("Other Medthods", Colors.black, 15,
                                FontWeight.bold)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.0, right: 28, top: 70),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => a()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20), // Adjusting margin
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        color: Color(0xfffc6111),
                      ),
                      height: 65,

                      width: scrrr.width * 1,
                      child: Center(
                        child: Text(
                          "+ Add Another Credit/Debit Card",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  a() {
    final scrrr = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
            height: 650,
            width: scrrr.width * 1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              color: Colors.yellow,
            )),
      ],
    );
  }
}
