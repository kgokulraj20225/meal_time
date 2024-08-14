import 'package:flutter/material.dart';
import 'package:meal_time/login_details/registry.dart';
import '../allfun.dart';
import 'login.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xfffdfdfd),
        body: On(),
      ),
    );
  }
}

class On extends StatefulWidget {
  const On({super.key});

  @override
  State<On> createState() => _OnState();
}

class _OnState extends State<On> {
  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            // Top Section with Background Color
            Positioned(
              top: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xfffc6111),
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurStyle: BlurStyle.normal,
                      blurRadius: 20,
                      spreadRadius: 15,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                height: screensize.height * 0.47,
                width: MediaQuery.of(context).size.width,
              ),
            ),

            // Content Section
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Image Section
                Container(
                  margin: EdgeInsets.only(top: 300), // Adjusting the top margin
                  height: 220,
                  width: 220,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://tse2.mm.bing.net/th?id=OIP.MV4I-TN5p3SQOIeaNLsw1gHaGL&pid=Api&P=0&h=180"),
                  ),
                ),

                // Text Section
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Text(
                      "Discover the best foods from over 1000 \nrestaurants and fast delivery to your \n doorstep",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                // Login Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginApp()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20), // Adjusting margin
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xfffc6111),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 9,
                          offset: Offset(0, 8),
                          spreadRadius: 3,
                        ),
                      ],
                    ),
                    height: 68,
                    width: 300,
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),

                // Create Account Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => create()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 100), // Adjusting margin
                    width: 300,
                    child: Chip(
                      backgroundColor: Color(0xfffdfdfd),
                      side: BorderSide(
                        color: Color(0xfffc6111),
                        width: 2,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      label: Center(
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            "Create an Account",
                            style: TextStyle(
                              color: Color(0xfffc6111),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
