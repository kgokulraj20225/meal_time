import 'package:flutter/material.dart';
import 'package:meal_time/allfun.dart';
import 'package:meal_time/home/Offers/offers.dart';

class about_us extends StatefulWidget {
  const about_us({super.key});

  @override
  State<about_us> createState() => _about_usState();
}

class _about_usState extends State<about_us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: text("About Us", Colors.black, 25, FontWeight.bold),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => offers_page()));
              },
              icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: about(),
    );
  }
}

class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  Widget a(String t1, double n1) {
    final scr = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: scr.width * 1,
          height: n1,
          // color: Colors.red,
          child: Padding(
            padding:
                EdgeInsets.only(left: 40.0, right: 20, top: 30, bottom: 10),
            child: text(t1, Colors.black.withOpacity(0.5), 15, FontWeight.bold),
          ),
        ),
        Positioned(
            left: 16.5,
            top: 31.7,
            child: Icon(
              Icons.dangerous,
              size: 18,
              color: Color(0xfffc6111),
            ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // scr = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            a("Meal Time is your go-to app for discovering delicious,home-cooked meals tailored to your taste.Whether you're craving something savory or sweet,Meal Time connects you with a diverse range of recipes and meal options crafted by passionate home chefs. Our mission is to bring the joy of cooking and eating together, offering personalized recommendations and easy-to-follow instructions. Join us on a culinary journey and make every meal a memorable experience with Meal Time.",
                300),
            a("Meal Time is your ultimate companion in the culinary world, designed to bring the best dining experiences right to your fingertips. We understand that food is more than just sustenance—it's a way to connect, celebrate, and explore. Whether you're a seasoned foodie, an adventurous eater, or someone just looking to simplify meal planning, Meal Time is here to enrich your culinary journey.",
                240),
            a("At Meal Time, we believe that everyone deserves access to great food, no matter where they are or what their tastes might be. Our app offers a diverse range of recipes, restaurant recommendations, and meal plans tailored to your unique preferences and dietary needs. From the latest food trends to timeless classics, our content is curated to inspire and satisfy your appetite.",
                210),
            a("Our team of culinary experts and tech enthusiasts work tirelessly to bring you the best features and functionalities. With an intuitive interface, easy navigation, and a constantly updated database, Meal Time makes discovering new dishes and organizing your meals an enjoyable and effortless experience. We are committed to providing a seamless experience, ensuring that every meal is a memorable one.",
                260),
            a("At Meal Time, we understand the importance of community and sharing. Our app fosters a space where users can connect, share their culinary creations, and discover new ideas from like-minded food lovers. Whether you're trying out a new recipe or exploring a local restaurant, we encourage you to share your experiences and become part of a vibrant community that celebrates food in all its forms.",
                250),
            a("Thank you for choosing Meal Time as your go-to food app. We're excited to be part of your culinary adventures and are committed to continually evolving and improving to better serve you. Together, let's make every meal a time to remember!",
                190),
            a("Developer Info\n Name: Gokulraj K \n Gmail: meal_time(lunch_world)@gmail.com \n Co_developer Name: VimalRaj V ",
                200)
          ],
        ),
      ),
    );
  }
}
