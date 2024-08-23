import 'package:flutter/material.dart';

class photo extends StatefulWidget {
  const photo({super.key});

  @override
  State<photo> createState() => _photoState();
}

class _photoState extends State<photo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          child: Image.network("https://wallpaperaccess.com/full/9327602.jpg"),
        ),
      ),
    );
  }
}
