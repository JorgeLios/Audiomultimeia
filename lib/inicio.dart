import 'package:flutter/material.dart';
import 'package:plantilla/auth_screen.dart';
import 'dart:math';



import 'constants.dart';

void main() {
  runApp(MyAppp());
}

class MyAppp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // Late we need it
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white38,
        border: InputBorder.none,
        hintStyle: TextStyle(color: Colors.white),
        contentPadding: EdgeInsets.symmetric(
           vertical: defpaultPadding * 1.2, horizontal: defpaultPadding),
    ),
      ),
      home: AuthScreenn(),
    );
  }
}