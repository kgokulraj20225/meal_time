import 'package:flutter/material.dart';
import 'package:meal_time/login_details/login.dart';
import 'package:meal_time/main.dart';
import '../allfun.dart';

class create extends StatefulWidget {
  const create({super.key});

  @override
  State<create> createState() => _createState();
}

class _createState extends State<create> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffc6111),
      body: create_in(),
    );
  }
}

class create_in extends StatefulWidget {
  const create_in({super.key});

  @override
  State<create_in> createState() => _create_inState();
}

class _create_inState extends State<create_in> {
  final _form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        height: screenSize.height * 1,
        child: Form(
          key: _form,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: screenSize.height * 0.01,
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(27.0),
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    // padding: EdgeInsets.only(top: 20, bottom: 20),
                    // height: MediaQuery.of(context).size.height,
                    height: screenSize.height * 0.83,
                    decoration: BoxDecoration(
                      color: Color(0xfffdfdfd),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(100.0),
                        bottomLeft: Radius.circular(100.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: ListView(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: text("Sign Up", Color(0xfffc6111), 38,
                              FontWeight.bold),
                        ),
                        textfield(
                            Colors.white,
                            Colors.grey,
                            Color(0xfffc6111),
                            9,
                            Offset(0, 8),
                            BorderRadius.circular(30),
                            Icons.person,
                            EdgeInsets.only(left: 25),
                            "Name",
                            "please enter your name",
                            TextInputType.name),
                        textfield(
                            Colors.white,
                            Colors.grey,
                            Color(0xfffc6111),
                            9,
                            Offset(0, 8),
                            BorderRadius.circular(30),
                            Icons.email,
                            EdgeInsets.only(left: 25),
                            "Email",
                            "please enter your email",
                            TextInputType.emailAddress),
                        textfield(
                            Colors.white,
                            Colors.grey,
                            Color(0xfffc6111),
                            9,
                            Offset(0, 8),
                            BorderRadius.circular(30),
                            Icons.person,
                            EdgeInsets.only(left: 25),
                            "Mobile no",
                            "please enter your mobile no",
                            TextInputType.number),
                        textfield(
                            Colors.white,
                            Colors.grey,
                            Color(0xfffc6111),
                            9,
                            Offset(0, 8),
                            BorderRadius.circular(30),
                            Icons.person,
                            EdgeInsets.only(left: 25),
                            "Address",
                            "please enter your address",
                            TextInputType.streetAddress),
                        textfield(
                            Colors.white,
                            Colors.grey,
                            Color(0xfffc6111),
                            9,
                            Offset(0, 8),
                            BorderRadius.circular(30),
                            Icons.person,
                            EdgeInsets.only(left: 25),
                            "Password",
                            "please enter your password",
                            TextInputType.visiblePassword),
                        textfield(
                            Colors.white,
                            Colors.grey,
                            Color(0xfffc6111),
                            9,
                            Offset(0, 8),
                            BorderRadius.circular(30),
                            Icons.person,
                            EdgeInsets.only(left: 25),
                            "Confirm Password",
                            "please Confirm your password",
                            TextInputType.name),
                        SizedBox(
                          height: screenSize.height * 0.02,
                        ),
                        Center(
                          child: Container(
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 3,
                                    offset: Offset(0, 8),
                                    blurRadius: 9,
                                  )
                                ]),
                            child: ElevatedButton(
                              onPressed: () {
                                if (_form.currentState!.validate()) {
                                  // Process the payment

                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => home()));
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xfffc6111),
                                foregroundColor: Colors.white,
                                minimumSize: Size(300, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              child: text(
                                  "Sign Up", Colors.white, 16, FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.025),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 50.0),
                              child: text("Already have an Account?",
                                  Colors.grey, 16, FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 50.0),
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LoginApp()));
                                  },
                                  child: text("LogIn", Color(0xfffc6111), 16,
                                      FontWeight.bold)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
