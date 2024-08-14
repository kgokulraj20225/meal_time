import 'package:flutter/material.dart';
import 'package:meal_time/main.dart';
import 'package:meal_time/on_booord/one.dart';

import '../allfun.dart';

class new_pass extends StatefulWidget {
  const new_pass({super.key});

  @override
  State<new_pass> createState() => _new_passState();
}

class _new_passState extends State<new_pass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffc6111),
      body: nep(),
    );
  }
}

class nep extends StatefulWidget {
  const nep({super.key});

  @override
  State<nep> createState() => _nepState();
}

class _nepState extends State<nep> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: screen.height * 0.173,
          ),
          Container(
            clipBehavior: Clip.hardEdge,
            margin: EdgeInsets.all(30),
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: Color(0xfffdfdfd),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                  bottomLeft: Radius.circular(100)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            height: screen.height * 0.6,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                child: ListView(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                        child: text(
                            "New Password", Colors.black, 30, FontWeight.bold)),
                    SizedBox(
                      height: screen.height * 0.015,
                    ),
                    text(
                        "\t \t  Please enter your new password \n  to create a new password via email",
                        Colors.grey,
                        16,
                        FontWeight.bold),
                    SizedBox(
                      height: screen.height * 0.03,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: textfield1(
                          Colors.white,
                          Colors.grey,
                          Color(0xfffc6111),
                          9,
                          Offset(0, 8),
                          BorderRadius.circular(30),
                          EdgeInsets.all(20),
                          "New Password"),
                    ),
                    SizedBox(
                      height: screen.height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: screen.width * 0.7,
                        child: textfield1(
                            Colors.white,
                            Colors.grey,
                            Color(0xfffc6111),
                            9,
                            Offset(0, 8),
                            BorderRadius.circular(30),
                            EdgeInsets.all(20),
                            "Confirm Password"),
                      ),
                    ),
                    SizedBox(height: screen.height * 0.03),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => MyApp()));
                        },
                        child: Container(
                            height: screen.height * 0.07,
                            width: screen.width * 0.71,
                            decoration: BoxDecoration(
                                color: Color(0xfffc6111),
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 9,
                                      offset: Offset(0, 8),
                                      spreadRadius: 3,
                                      color: Colors.grey)
                                ]),
                            child: Center(
                                child: text("Next", Color(0xfffdfdfd), 20,
                                    FontWeight.bold))),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
