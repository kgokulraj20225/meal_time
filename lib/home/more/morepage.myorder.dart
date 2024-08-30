import 'package:flutter/material.dart';
import 'package:meal_time/allfun.dart';

class myorder extends StatefulWidget {
  const myorder({super.key});

  @override
  State<myorder> createState() => _myorderState();
}

class _myorderState extends State<myorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: text("My Order", Colors.black, 25, FontWeight.bold),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: order1(),
    );
  }
}

class order1 extends StatefulWidget {
  const order1({super.key});

  @override
  State<order1> createState() => _order1State();
}

class _order1State extends State<order1> {
  Widget a(String t1, String t2, EdgeInsets ei, Color c1, Color c2, double n1) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: 12.0, bottom: 3, top: 12, right: 12),
              child: text(t1, c1, 16, FontWeight.bold),
            ),
            Padding(
              padding: ei,
              child: text(t2, c2, n1, FontWeight.normal),
            )
          ],
        ),
      ],
    );
  }

  Widget a1() {
    return Divider(
      color: Colors.grey,
      thickness: 0.5, // Customize the thickness of the line
      indent: 15, // Adds left padding to the line
      endIndent: 15,
    );
  }

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 165,
              width: screen.width * 1,
              // color: Colors.red,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Image.network(
                          fit: BoxFit.cover,
                          "https://images.pexels.com/photos/3738730/pexels-photo-3738730.jpeg?auto=compress&cs=tinysrgb&w=400"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text("King Burger", Colors.black, 16, FontWeight.bold),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xfffc6111),
                              size: 14,
                            ),
                            text("4.9", Color(0xfffc6111), 13, FontWeight.bold),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 8.0, top: 5, bottom: 5),
                              child: text(
                                  "(124 ratings)",
                                  Colors.black.withOpacity(0.5),
                                  13,
                                  FontWeight.normal),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 5.0),
                          child: text(
                              "Burger . Western Food",
                              Colors.black.withOpacity(0.5),
                              13,
                              FontWeight.normal),
                        ),
                        Row(children: [
                          Icon(
                            Icons.location_on,
                            color: Color(0xfffc6111),
                            size: 16,
                          ),
                          text(
                              "No 03,4th Lane,Newyork",
                              Colors.black.withOpacity(0.5),
                              13,
                              FontWeight.bold),
                        ])
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: screen.width * 1,
              height: 270,
              color: Colors.black.withOpacity(0.05),
              child: Column(
                children: [
                  a("Chicken Burger x1", "\$16", EdgeInsets.only(left: 190),
                      Colors.black.withOpacity(0.4), Colors.black, 16),
                  a1(),
                  a("Classic Burger x1", "\$13", EdgeInsets.only(left: 195),
                      Colors.black.withOpacity(0.4), Colors.black, 16),
                  a1(),
                  a(
                      "Cheese Chicken Burger x1",
                      "\$26",
                      EdgeInsets.only(left: 132),
                      Colors.black.withOpacity(0.4),
                      Colors.black,
                      16),
                  a1(),
                  a(
                      "Chicken Legs Basket x1",
                      "\$19",
                      EdgeInsets.only(left: 149),
                      Colors.black.withOpacity(0.4),
                      Colors.black,
                      16),
                  a1(),
                  a("French Fries Large x1", "\$10", EdgeInsets.only(left: 165),
                      Colors.black.withOpacity(0.4), Colors.black, 16),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 13.0, left: 12, bottom: 5),
                  child: text("Delivery Instructions", Colors.black, 16,
                      FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 130.0, top: 13, bottom: 5),
                  child: GestureDetector(
                    onTap: () {},
                    child: text(
                        "+ Add Notes", Color(0xfffc6111), 14, FontWeight.bold),
                  ),
                ),
              ],
            ),
            a1(),
            a("Sub Total", "\$98", EdgeInsets.only(left: 255), Colors.black,
                Color(0xfffc6111), 16),
            a("Delivery Cost", "\$2", EdgeInsets.only(left: 237), Colors.black,
                Color(0xfffc6111), 16),
            a1(),
            a("Total", "\$100", EdgeInsets.only(left: 260), Colors.black,
                Color(0xfffc6111), 25),
            Padding(
              padding:
                  EdgeInsets.only(left: 40.0, right: 40, top: 30, bottom: 100),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(bottom: 20), // Adjusting margin
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    color: Color(0xfffc6111),
                  ),
                  height: 65,

                  width: screen.width * 1,
                  child: Center(
                    child: Text(
                      "check out",
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
    );
  }
}
