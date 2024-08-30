import 'package:flutter/material.dart';

class pay_chas_food extends StatefulWidget {
  const pay_chas_food({super.key});

  @override
  State<pay_chas_food> createState() => _pay_chas_foodState();
}

class _pay_chas_foodState extends State<pay_chas_food> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: puchase_food(),
        ));
  }
}

class puchase_food extends StatefulWidget {
  const puchase_food({super.key});

  @override
  State<puchase_food> createState() => _puchase_foodState();
}

class _puchase_foodState extends State<puchase_food> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Positioned(
          top: 0,
          child: Container(
              height: 400,
              clipBehavior: Clip.hardEdge,
              width: screen.width * 1,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://media.istockphoto.com/id/184946701/photo/pizza.jpg?s=612x612&w=0&k=20&c=97rc0VIi-s3mn4xe4xDy9S-XJ_Ohbn92XaEMaiID_eY=",
                      )))),
        ),
        Positioned(
          top: 45,
          left: 15,
          child: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xfffdfdfd),
                  )),
              Padding(
                padding: EdgeInsets.only(left: 270.0),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_cart, color: Color(0xfffdfdfd))),
              ),
            ],
          ),
        ),
        Container(
          height: 600,
          width: screen.width * 1,
          decoration: BoxDecoration(
              color: Color(0xfffdfdfd),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50))),
        )
      ],
    ));
  }
}
