// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constants.dart';

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
            children: [
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