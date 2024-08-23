import 'package:flutter/material.dart';
import 'package:meal_time/allfun.dart';
import 'package:meal_time/home/food_home_page/menu.dart';

import '../../login_details/login.dart';
import 'profile.photo.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xfffdfdfd),
        appBar: AppBar(
          backgroundColor: Color(0xfffdfdfd),
          title: text("Profile", Colors.black, 30, FontWeight.bold),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => menu()));
                  },
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://wallpaperaccess.com/full/9327602.jpg"),
                  )),
            )
          ],
        ),
        body: proffile(),
      ),
    );
  }
}

class proffile extends StatefulWidget {
  const proffile({super.key});

  @override
  State<proffile> createState() => _proffileState();
}

class _proffileState extends State<proffile> {
  @override
  Widget build(BuildContext context) {
    final scc = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        height: scc.height * 0.9,
        width: scc.width * 1,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListView(
            children: [
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => photo()));
                  },
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 2),
                              blurRadius: 12)
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "https://wallpaperaccess.com/full/9327602.jpg",
                            ))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.edit,
                          color: Color(0xfffc6111),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: text("Edit Profile", Color(0xfffc6111), 16,
                              FontWeight.bold),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: text("Hi there Gokulraj!", Colors.black, 20,
                          FontWeight.bold),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginApp()));
                        },
                        child: text(
                            "Sign Out!", Colors.grey, 16, FontWeight.bold)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfieldprofile("Name", "Gokulraj K", context),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfieldprofile(
                    "Email", "kgokulraj.developer@gmail.com", context),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfieldprofile("Mobile No", "7845711277", context),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfieldprofile("Address", "Panruti", context),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfieldprofile(
                    "Password", "...................", context),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfieldprofile(
                    "Confirm Password", "..................", context),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 65,
                    width: scc.width * 0.8,
                    decoration: BoxDecoration(
                        color: Color(0xfffc6111),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: text("Save", Colors.white, 16, FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Container(
                height: scc.height * 0.08,
                width: scc.width * 0.8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
