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
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Onboard())));
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xfffdfdfd),
        body: Container(
          margin:
              EdgeInsets.only(top: 300, left: 70), // Adjusting the top margin
          height: 250,
          width: 250,
          clipBehavior: Clip.hardEdge,
          decoration:
              BoxDecoration(color: Colors.transparent, shape: BoxShape.circle),
          child: Center(
            child: Image.network(
                "https://tse2.mm.bing.net/th?id=OIP.MV4I-TN5p3SQOIeaNLsw1gHaGL&pid=Api&P=0&h=180"),
          ),
        ),
      ),
    );
  }
}

class RotatingLogo extends StatefulWidget {
  @override
  _RotatingLogoState createState() => _RotatingLogoState();
}

class _RotatingLogoState extends State<RotatingLogo> {
  List<String> logos = [
    'assets/i1.jpg',
    'assets/i2.jpg',
    'assets/i3.jpg',
    'assets/i4.jpg',
    'assets/i5.jpg',
    'assets/i6.jpg',
    'assets/i8.jpg',
    'assets/i9.jpg',
    'assets/i10.jpg',
    'assets/i11.jpg',
    'assets/i12.jpg',
    'assets/i13.png' // Add as many logos as you have
  ];

  int _currentLogoIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startLogoRotation();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startLogoRotation() {
    _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        _currentLogoIndex = (_currentLogoIndex + 1) % logos.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        logos[_currentLogoIndex],
        width: 220, // Adjust as necessary
        height: 220, // Adjust as necessary
      ),
    );
  }
}
