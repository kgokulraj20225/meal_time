import 'package:flutter/material.dart';
import 'package:meal_time/allfun.dart';

class offers_page extends StatefulWidget {
  const offers_page({super.key});

  @override
  State<offers_page> createState() => _offers_pageState();
}

class _offers_pageState extends State<offers_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: text("Latest Offers", Colors.black, 30, FontWeight.bold),
        ),
      ),
    );
  }
}
