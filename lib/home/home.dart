import 'package:flutter/material.dart';

import 'menu.dart';
import 'more_page.dart';
import '../Offers/offers.dart';
import 'pro_page.dart';

class homee extends StatefulWidget {
  const homee({super.key});

  @override
  State<homee> createState() => _homeState();
}

class _homeState extends State<homee> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        animationDuration: Durations.short1,
        child: Scaffold(
          bottomSheet: Container(
            child: TabBar(
              labelColor: Color(0xfffc6111),
              unselectedLabelColor: Colors.grey,
              indicatorColor: Color(0xfffc6111),
              tabs: [
                Tab(icon: Icon(Icons.window), text: "Menu"),
                Tab(icon: Icon(Icons.shopping_bag_outlined), text: "Offers"),
                Tab(icon: Icon(Icons.person), text: "Profile"),
                Tab(icon: Icon(Icons.list_alt_outlined), text: "More"),
              ],
            ),
          ),
          backgroundColor: Color(0xfffdfdfd),
          body: TabBarView(
            children: [
              menu(),
              offers_page(),
              pro_page(),
              more_page(),
            ],
          ),
        ),
      ),
    );
  }
}
