// TODO Implement this library.
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:meal_time/main.dart';
import 'package:meal_time/login_details/on%20boardscreen.dart';

//import 'package:login_page/login2.dart';

class First_page extends StatefulWidget {
  const First_page({super.key});

  @override
  State<First_page> createState() => _First_pageState();
}

class _First_pageState extends State<First_page> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Onboard())));
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xfffdfdfd),
        body: sec(),
      ),
    );
  }
}

class sec extends StatefulWidget {
  const sec({super.key});

  @override
  State<sec> createState() => _secState();
}

class _secState extends State<sec> {
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Positioned(
        child: Center(
          child: Container(
            height: 220,
            width: 220,
            child: Image.network(
              "https://tse2.mm.bing.net/th?id=OIP.MV4I-TN5p3SQOIeaNLsw1gHaGL&pid=Api&P=0&h=180",
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    ]);
  }
}
