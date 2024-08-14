import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget text(String text, Color color, double size, FontWeight weight) {
  return Container(
    child: Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,
      ),
    ),
  );
}

Widget textfield(Color c1, Color c2, Color c3, double int, Offset offset,
    BorderRadius br, IconData icon, EdgeInsets ei, String text) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 13.0),
    decoration: BoxDecoration(borderRadius: br, color: c1, boxShadow: [
      BoxShadow(color: c2, blurRadius: int, offset: offset, spreadRadius: 3)
    ]),
    child: TextField(
      style: TextStyle(color: c3),
      cursorColor: c3,
      decoration: InputDecoration(
        labelText: text,
        labelStyle: TextStyle(color: c3),
        contentPadding: ei,
        suffixIcon: Icon(icon),
        border: OutlineInputBorder(
            borderRadius: br,
            borderSide: BorderSide.merge(
              BorderSide(color: Colors.red),
              BorderSide.none,
            )),
      ),
    ),
  );
}

Widget textfielld(Color c1, Color c2, Color c3, double int, Offset offset,
    BorderRadius br, IconData icon, EdgeInsets ei, String text) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
    decoration: BoxDecoration(borderRadius: br, color: c1, boxShadow: [
      BoxShadow(color: c2, blurRadius: int, offset: offset, spreadRadius: 3)
    ]),
    child: TextField(
      style: TextStyle(color: c3),
      cursorColor: c3,
      decoration: InputDecoration(
        labelText: text,
        labelStyle: TextStyle(color: c3),
        contentPadding: ei,
        suffixIcon: Icon(icon),
        border: OutlineInputBorder(
            borderRadius: br,
            borderSide: BorderSide.merge(
              BorderSide(color: Colors.red),
              BorderSide.none,
            )),
      ),
    ),
  );
}

Widget textfield1(Color c1, Color c2, Color c3, double int, Offset offset,
    BorderRadius br, EdgeInsets ei, String text) {
  return Container(
    decoration: BoxDecoration(borderRadius: br, color: c1, boxShadow: [
      BoxShadow(color: c2, blurRadius: int, offset: offset, spreadRadius: 3)
    ]),
    child: TextField(
      style: TextStyle(color: c3),
      cursorColor: c3,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(
          color: c3,
        ),
        contentPadding: ei,
        border: OutlineInputBorder(
            borderRadius: br,
            borderSide: BorderSide.merge(
              BorderSide(color: Colors.red),
              BorderSide.none,
            )),
      ),
    ),
  );
}

Widget textfield2(Color c1, Color c2, Color c3, double int, Offset offset,
    BorderRadius br, EdgeInsets ei, String text) {
  return Container(
    decoration: BoxDecoration(borderRadius: br, color: c1, boxShadow: [
      BoxShadow(color: c2, blurRadius: int, offset: offset, spreadRadius: 2)
    ]),
    child: TextField(
      style: TextStyle(color: c3),
      cursorColor: c3,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        labelText: text,
        labelStyle: TextStyle(
          color: c3,
        ),
        contentPadding: ei,
        border: OutlineInputBorder(
            borderRadius: br,
            borderSide: BorderSide.merge(
              BorderSide(color: Colors.red),
              BorderSide.none,
            )),
      ),
    ),
  );
}

Widget catego(String img, String t1, String t2, BoxFit bf, BoxShape bs,
    BorderRadius br, Widget page) {
  return Container(
    height: 130,
    width: 400,
    child: Stack(
      children: [
        Positioned(
          left: 55,
          child: Container(
            height: 100,
            width: 300,
            decoration: BoxDecoration(
              color: Color(0xfffdfdfd),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(70),
                bottomLeft: Radius.circular(70),
                topRight: Radius.circular(26),
                bottomRight: Radius.circular(26),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 0,
                  offset: Offset(0, 4),
                  blurRadius: 10,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 17,
          top: 12.5,
          child: Container(
            clipBehavior: Clip.hardEdge,
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: br,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 2),
                  blurRadius: 12,
                ),
              ],
              shape: bs,
              image: DecorationImage(
                fit: bf,
                image: NetworkImage(
                  img,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 150,
          bottom: 52,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text(
                t1,
                Colors.black87,
                25,
                FontWeight.bold,
              ),
              text(
                t2,
                Colors.grey,
                16,
                FontWeight.bold,
              ),
            ],
          ),
        ),
        Positioned(
          left: 330,
          top: 29,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Color(0xfffdfdfd),
              borderRadius: BorderRadius.all(Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 5),
                  blurRadius: 12,
                ),
              ],
            ),
            child: Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => page),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xfffc6111),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    ),
  );
}

Widget catego1(
    String img, String t1, String t2, BoxFit bf, BoxShape bs, Widget page1) {
  return Container(
    // color: Colors.yellow,
    height: 130,
    width: 400,
    child: Stack(
      children: [
        Positioned(
            left: 55,
            child: Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                  color: Color(0xfffdfdfd),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      bottomLeft: Radius.circular(70),
                      topRight: Radius.circular(26),
                      bottomRight: Radius.circular(26)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 0,
                        offset: Offset(0, 4),
                        blurRadius: 10)
                  ]),
            )),
        Positioned(
          left: 17,
          top: 12.5,
          child: Container(
            clipBehavior: Clip.hardEdge,
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, offset: Offset(0, 2), blurRadius: 12)
                ],
                shape: bs,
                image: DecorationImage(
                    fit: bf,
                    image: NetworkImage(
                      img,
                    ))),
          ),
        ),
        Positioned(
          left: 150,
          bottom: 52,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text(
                t1,
                Colors.black87,
                25,
                FontWeight.bold,
              ),
              text(
                t2,
                Colors.grey,
                16,
                FontWeight.bold,
              ),
            ],
          ),
        ),
        Positioned(
            left: 330,
            top: 29,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Color(0xfffdfdfd),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 5),
                        blurRadius: 12)
                  ]),
              child: Builder(builder: (context) {
                return IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => page1),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xfffc6111),
                  ),
                );
              }),
            ))
      ],
    ),
  );
}

Widget banner(String img, String t1, String t2, String t3, Widget page) {
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Builder(builder: (context) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => page));
            },
            child: Container(
              clipBehavior: Clip.hardEdge,
              // padding: EdgeInsets.all(30),
              height: 200,
              width: 375,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xfffdfdfd),
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(scale: 1, img))),
            ),
          );
        }),
      ),
      Positioned(
        left: 30,
        bottom: 30,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text(t1, Colors.white, 13, FontWeight.bold),
            Row(
              children: [
                Icon(
                  Icons.star,
                  size: 15,
                  color: Colors.deepOrange,
                ),
                SizedBox(
                  width: 3,
                ),
                text(t2, Colors.deepOrange, 10, FontWeight.normal),
                SizedBox(
                  width: 2,
                ),
                text(t3, Colors.white, 10, FontWeight.bold),
              ],
            )
          ],
        ),
      )
    ],
  );
}
