import 'package:flutter/material.dart';
import 'package:meal_time/allfun.dart';
import 'mobile_otp.dart';

class reset_pass extends StatefulWidget {
  const reset_pass({super.key});

  @override
  State<reset_pass> createState() => _reset_passState();
}

class _reset_passState extends State<reset_pass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffc6111),
      body: page(),
    );
  }
}

class page extends StatefulWidget {
  const page({super.key});

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: screen.height * 0.23,
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
            height: screen.height * 0.5,
            child: ListView(
              children: [
                Center(
                    child: text(
                        "Reset Password", Colors.black, 30, FontWeight.bold)),
                SizedBox(
                  height: screen.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: text(
                      "\t \tPlease enter your email to receive a\n link to create a new password via email",
                      Colors.grey,
                      16,
                      FontWeight.bold),
                ),
                textfielld(
                    Colors.white,
                    Colors.grey,
                    Color(0xfffc6111),
                    9,
                    Offset(0, 8),
                    BorderRadius.circular(30),
                    Icons.email,
                    EdgeInsets.all(20),
                    "email",
                    "Please enter your email",
                    TextInputType.emailAddress),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => mobile_otp()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Container(
                        height: screen.height * 0.07,
                        width: screen.width * 0.8,
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
                            child: text("Send", Color(0xfffdfdfd), 20,
                                FontWeight.bold))),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
