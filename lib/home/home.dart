// import 'package:flutter/material.dart';
// import 'package:meal_time/home/home_page/hoem_page.dart';
// import 'food_home_page/menu.dart';
// import 'more/more_page.dart';
// import 'Offers/offers.dart';
// import 'profile/profile.dart';
//
// class homee extends StatefulWidget {
//   const homee({super.key});
//
//   @override
//   State<homee> createState() => _homeState();
// }
//
// class _homeState extends State<homee> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: DefaultTabController(
//         length: 5,
//         animationDuration: Durations.short1,
//         child: Scaffold(
//           bottomSheet: ClipPath(
//             // clipper: clippper(),
//             child: Container(
//               // color: Colors.red,
//               child: TabBar(
//                 labelColor: Color(0xfffc6111),
//                 unselectedLabelColor: Colors.grey,
//                 indicatorColor: Color(0xfffc6111),
//                 tabs: [
//                   Tab(icon: Icon(Icons.home), text: "Home"),
//                   Tab(icon: Icon(Icons.window), text: "Menu"),
//                   Tab(icon: Icon(Icons.shopping_bag_outlined), text: "Offers"),
//                   Tab(icon: Icon(Icons.person), text: "Profile"),
//                   Tab(icon: Icon(Icons.list_alt_outlined), text: "More"),
//                 ],
//               ),
//             ),
//           ),
//           backgroundColor: Color(0xfffdfdfd),
//           body: TabBarView(
//             physics: NeverScrollableScrollPhysics(),
//             children: [
//               home_page(),
//               menu(),
//               offers_page(),
//               profile(),
//               more_page(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class clippper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path_0 = Path();
//     path_0.moveTo(size.width * 0.0033333, size.height * 0.0033333);
//     path_0.lineTo(0, size.height * 0.9833333);
//     path_0.lineTo(size.width * 0.2400000, size.height * 0.9866667);
//     path_0.lineTo(size.width * 0.3333333, size.height * 0.6733333);
//     path_0.lineTo(size.width * 0.4933333, size.height * 0.6700000);
//     path_0.lineTo(size.width * 0.6300000, size.height * 0.7366667);
//     path_0.lineTo(size.width * 0.6466667, size.height * 0.8766667);
//     path_0.lineTo(size.width * 0.6533333, size.height * 0.9933333);
//     path_0.lineTo(size.width * 0.9866667, size.height * 0.9900000);
//     path_0.lineTo(size.width * 0.9900000, size.height * 0.0100000);
//     return path_0;
//   }
//
//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }
//
// class SPageView extends StatefulWidget {
//   const SPageView({Key? key}) : super(key: key);
//
//   @override
//   State<SPageView> createState() => _SPageViewState();
// }
//
// class _SPageViewState extends State<SPageView> {
//   @override
//   Widget build(BuildContext context) {
//     final PageController controller = PageController();
//     return MaterialApp(
//         home: Scaffold(
//             body: PageView(
//       /// [PageView.scrollDirection] defaults to [Axis.horizontal].
//       /// Use [Axis.vertical] to scroll vertically.
//       controller: controller,
//       children: const <Widget>[
//         Center(
//           child: menu(),
//         ),
//         Center(
//           child: offers_page(),
//         ),
//         Center(
//           child: profile(),
//         ),
//         Center(
//           child: profile(),
//         )
//       ],
//     )));
//   }
// }
import 'package:flutter/material.dart';
import 'package:meal_time/home/home_page/hoem_page.dart';
import 'food_home_page/menu.dart';
import 'more/more_page.dart';
import 'Offers/offers.dart';
import 'profile/profile.dart';

class HomePageWithTabs extends StatefulWidget {
  const HomePageWithTabs({super.key});

  @override
  State<HomePageWithTabs> createState() => _HomePageWithTabsState();
}

class _HomePageWithTabsState extends State<HomePageWithTabs> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white10,
        body: Stack(
          children: [
            Positioned.fill(child: TabBarView(
              controller: _tabController,
              children: [
                home_page(),
              menu(),
              offers_page(),
              profile(),
              more_page(),   // Replace with your respective pages
              ],
            ),),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: Stack(
                  children: [
                    CustomPaint(
                      size: Size(MediaQuery.of(context).size.width, 80),
                      painter: BottomNavigationBarPainter(),
                    ),
                    Center(
                      heightFactor: 0.8,
                      child: FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: Colors.orange,
                        child: Icon(Icons.home),
                        elevation: 0.5,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      child: TabBar(
                        controller: _tabController,
                        tabs: [
                          Tab(icon: Icon(Icons.menu)),
                          Tab(icon: Icon(Icons.local_offer_sharp)),
                          Container(width: MediaQuery.of(context).size.width*20,),
                          Tab(icon: Icon(Icons.person)),
                          Tab(icon: Icon(Icons.more)),
                        ],
                        indicatorColor: Colors.transparent, // Hide the tab indicator line
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BottomNavigationBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.grey..style = PaintingStyle.fill;
    Path path = Path();
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20), radius: Radius.circular(40.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}


// class BottomNavigationBar extends CustomPainter{
//   @override
//   void paint(Canvas canvas, Size size) {
//    Paint paint =Paint()..color=Colors.white..style=PaintingStyle.fill;
//    // Path path = Path()..moveTo(0,20);
//    Path path = Path();
//    path.quadraticBezierTo(size.width*0.20, 0, size.width*0.35, 0);
//    path.quadraticBezierTo(size.width*0.40, 0, size.width*0.40, 20);
//    path.arcToPoint(Offset(size.width*0.60,20),radius: Radius.circular(40.0),clockwise: false);
//    path.quadraticBezierTo(size.width*0.60, 0, size.width*0.65, 0);
//    path.quadraticBezierTo(size.width*0.80, 0, size.width, 0);
//    path.lineTo(size.width, size.height);
//    path.lineTo(0, size.height);
//    path.close();
//    canvas.drawPath(path, paint);
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//    return false;
//   }
//
// }

class SPageView extends StatefulWidget {
  const SPageView({Key? key}) : super(key: key);

  @override
  State<SPageView> createState() => _SPageViewState();
}

class _SPageViewState extends State<SPageView> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return MaterialApp(
        home: Scaffold(
            body: PageView(
              /// [PageView.scrollDirection] defaults to [Axis.horizontal].
              /// Use [Axis.vertical] to scroll vertically.
              controller: controller,
              children: const <Widget>[
                Center(
                  child: menu(),
                ),
                Center(
                  child: offers_page(),
                ),
                Center(
                  child: profile(),
                ),
                Center(
                  child: profile(),
                )
              ],
            )));
  }
}
