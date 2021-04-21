import 'package:cleaning/modules/home/home_screen.dart';
import 'package:cleaning/modules/welcome_screen/welcome_screen.dart';
import 'package:cleaning/shared/colors/color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: defaultColor,
        backgroundColor: defaultColor,

        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(),
    );
  }
}


