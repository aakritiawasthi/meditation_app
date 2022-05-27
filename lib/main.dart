// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constants.dart';
import 'package:meditation_app/widgets/category_card.dart';

void main() => runApp(MyApp()); 

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditation App',
      theme: ThemeData(
       fontFamily: "Cairo",
       scaffoldBackgroundColor: kBackgroundColor,
       textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 80,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomNavItem(),
             BottomNavItem(),
          ],
        ),
        ),
      body: Stack(
        children: [
          Container(
          height: size.height * .45,
          decoration: BoxDecoration(
            color: Color(0xFFF2BEA1), 
            image: DecorationImage(
            alignment: Alignment.centerLeft,
            image: AssetImage("assets/images/undraw_pilates_gpdb.png"),

          ),
          ),
          ),
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  alignment: Alignment.center,
                  height: 52,
                  width: 52,
                 decoration: BoxDecoration(
                   color: Color(0xFFF2BEA1),
                   shape: BoxShape.circle,
                 ),
                 child: SvgPicture.asset("assets/icons/menu.svg"),
                ),
              ),
              Text(
                "Good Morning 420",
                style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w900),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(29.5),
                  ),
                  child: TextField( 
                    decoration: InputDecoration(
                      hintText: "Search",
                      icon: SvgPicture.asset("assets/icons/search.svg"),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: .85,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: [
                       CategoryCard(
                         title: "Diet Recommendation",
                         svgSrc: "assets/icons/Hamburger.svg",
                         press: () {},
                       ),
                       CategoryCard(
                         title: "Kegel Exercise",
                         svgSrc: "assets/icons/Excrecises.svg",
                         press: () {},
                       ),
                       CategoryCard(
                         title: "Yoga",
                         svgSrc: "assets/icons/yoga.svg",
                         press: () {},
                       ),
                       CategoryCard(
                         title: "Meditation",
                         svgSrc: "assets/icons/Meditation.svg",
                         press: () {},
                       ),
                    ],),
                )
            ]
          ),
        ),
      )
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {}),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [SvgPicture.asset("assets/icons/calendar.svg"),
        Text("Today"),
        ],
      ),
    );
  }
}

