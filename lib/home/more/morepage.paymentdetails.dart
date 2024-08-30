import 'package:flutter/material.dart';
import 'package:meal_time/allfun.dart';

class payament extends StatefulWidget {
  const payament({super.key});

  @override
  State<payament> createState() => _payamentState();
}

class _payamentState extends State<payament> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffdfdfd),
      appBar: AppBar(
        title: text("Payment Details", Colors.black, 25, FontWeight.bold),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                size: 25,
                color: Colors.black,
              )),
        ],
        backgroundColor: Color(0xfffdfdfd),
      ),
      body: details(),
    );
  }
}

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    bool _canRemoveCard = false;
    final scrrr = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: text("Customize your payment method", Colors.black, 16,
                      FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1, // Customize the thickness of the line
                    indent: 15, // Adds left padding to the line
                    endIndent: 15,
                  ),
                ),
                Container(
                  height: 190,
                  width: scrrr.width * 1,
                  decoration:
                      BoxDecoration(color: Color(0xfffdfdfd), boxShadow: [
                    BoxShadow(
                      offset: Offset(-7, 20),
                      color: Colors.grey,
                      blurRadius: 35,
                    )
                  ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 30.0, right: 30, top: 30, bottom: 5),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: text("Cash/Card on delivery", Colors.black,
                                  15, FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 120.0),
                              child: Icon(
                                Icons.check,
                                color: Color(0xfffc6111),
                                size: 25,
                                weight: Checkbox.width,
                                opticalSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 0.5, // Customize the thickness of the line
                        indent: 45, // Adds left padding to the line
                        endIndent: 35,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 55.0, right: 30, top: 05, bottom: 5),
                        child: Row(
                          children: [
                            text(
                                "VISA", Color(0xff286ca0), 25, FontWeight.bold),
                            Padding(
                              padding: EdgeInsets.only(left: 18.0),
                              child: text(".... .... .... 6676", Colors.grey,
                                  16, FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 100,
                                  height: 40,
                                  child: Chip(
                                    backgroundColor: Color(0xfffdfdfd),
                                    side: BorderSide(
                                      color: Color(0xfffc6111),
                                      width: 1.5,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    label: Padding(
                                      padding: EdgeInsets.all(1),
                                      child: Text(
                                        "Delete card",
                                        style: TextStyle(
                                          color: Color(0xfffc6111),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 0.5, // Customize the thickness of the line
                        indent: 45, // Adds left padding to the line
                        endIndent: 35,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 52.0, top: 10),
                        child: GestureDetector(
                            onTap: () {},
                            child: text("Other Medthods", Colors.black, 15,
                                FontWeight.bold)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.0, right: 28, top: 70),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => a()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20), // Adjusting margin
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        color: Color(0xfffc6111),
                      ),
                      height: 65,

                      width: scrrr.width * 1,
                      child: Center(
                        child: Text(
                          "+ Add Another Credit/Debit Card",
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
        ],
      ),
    );
  }
}

class a extends StatefulWidget {
  const a({super.key});

  @override
  State<a> createState() => _aState();
}

class _aState extends State<a> {
  bool _canRemoveCard = false;
  final _form = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final scrrr = MediaQuery.of(context).size;

    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        fit: StackFit.loose,
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            color: Colors.black.withOpacity(0.7),
            width: scrrr.width * 1.0,
            height: scrrr.height * 1.0,
          ),
          Container(
            height: 750,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
              color: Color(0xfffdfdfd),
            ),
            child: Form(
              key: _form,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, left: 25),
                    child: Row(
                      children: [
                        text("Add Credit/Debit Card", Colors.black, 16,
                            FontWeight.bold),
                        Padding(
                          padding: EdgeInsets.only(left: 140.0),
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.close,
                                color: Colors.black,
                              )),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 0.5, // Customize the thickness of the line
                    indent: 25, // Adds left padding to the line
                    endIndent: 35,
                  ),
                  textfielld2(
                    Colors.grey.withOpacity(0.2),
                    Colors.grey.withOpacity(0.6),
                    Color(0xfffc6111),
                    BorderRadius.circular(30),
                    EdgeInsets.all(20),
                    30,
                    10,
                    "Card Number",
                    "Please enter your Card Number",
                    TextInputType.number,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.0, top: 10),
                    child: Row(
                      children: [
                        text("Expiry", Colors.black, 16, FontWeight.bold),
                        Padding(
                          padding: EdgeInsets.only(left: 60.0),
                          child: datetextfielld2(
                              Colors.grey.withOpacity(0.2),
                              Colors.grey.withOpacity(0.6),
                              Color(0xfffc6111),
                              BorderRadius.circular(30),
                              EdgeInsets.only(left: 28, bottom: 10),
                              50.0,
                              80.0,
                              // 50.0, // Corrected: Avoid leading zeros
                              // 5.0, // Corrected: Avoid leading zeros
                              "MM",
                              'mm',
                              TextInputType.datetime),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 50.0),
                          child: datetextfielld2(
                              Colors.grey.withOpacity(0.2),
                              Colors.grey.withOpacity(0.6),
                              Color(0xfffc6111),
                              BorderRadius.circular(30),
                              EdgeInsets.only(
                                left: 30,
                              ),
                              50.0,
                              100.0,
                              // 50.0, // Corrected: Avoid leading zeros
                              // 5.0, // Corrected: Avoid leading zeros
                              "yyyy",
                              'yyyy',
                              TextInputType.datetime),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: textfielld2(
                      Colors.grey.withOpacity(0.2),
                      Colors.grey.withOpacity(0.6),
                      Color(0xfffc6111),
                      BorderRadius.circular(30),
                      EdgeInsets.all(20),
                      30,
                      10,
                      "Security Code",
                      'Please enter the security code',
                      TextInputType.number,
                    ),
                  ),
                  textfielld2(
                    Colors.grey.withOpacity(0.2),
                    Colors.grey.withOpacity(0.6),
                    Color(0xfffc6111),
                    BorderRadius.circular(30),
                    EdgeInsets.all(20),
                    30,
                    10,
                    "First Name",
                    'Please enter your First Name',
                    TextInputType.name,
                  ),
                  textfielld2(
                    Colors.grey.withOpacity(0.2),
                    Colors.grey.withOpacity(0.6),
                    Color(0xfffc6111),
                    BorderRadius.circular(30),
                    EdgeInsets.all(20),
                    30,
                    10,
                    "Last Name",
                    'Please enter your Last Name',
                    TextInputType.name,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.0, top: 10),
                    child: Row(
                      children: [
                        text("You can remove this card\nat anytime",
                            Colors.black.withOpacity(0.4), 16, FontWeight.bold),
                        Padding(
                          padding: EdgeInsets.only(left: 90.0),
                          child: Switch(
                            activeColor: Color(0xfffc6111),
                            value: _canRemoveCard,
                            onChanged: (value) {
                              setState(() {
                                _canRemoveCard = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 60.0, top: 10),
                    child: GestureDetector(
                      onTap: () {
                        if (_form.currentState!.validate()) {
                          // Process the payment
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20), // Adjusting margin
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: Color(0xfffc6111),
                        ),
                        height: 57,

                        width: scrrr.width * 0.7,
                        child: Center(
                          child: Text(
                            "+ Add Card",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class addcrd extends StatefulWidget {
  @override
  State<addcrd> createState() => _addcrdState();
}

class _addcrdState extends State<addcrd> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Payment Details'),
        ),
        body: PaymentForm(),
      ),
    );
  }
}

class PaymentForm extends StatefulWidget {
  @override
  _PaymentFormState createState() => _PaymentFormState();
}

class _PaymentFormState extends State<PaymentForm> {
  final _formKey = GlobalKey<FormState>();
  bool _canRemoveCard = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Credit/Debit Card',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Card Number',
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your card number';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'MM',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'MM';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'YY',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'YY';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Security Code',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the security code';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'First Name',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your first name';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Last Name',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your last name';
                }
                return null;
              },
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Text('You can remove this card at anytime'),
                Switch(
                  activeColor: Color(0xfffc6111),
                  value: _canRemoveCard,
                  onChanged: (value) {
                    setState(() {
                      _canRemoveCard = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Process the payment
                }
              },
              child: Text('Add Card'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, // Set the background color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
