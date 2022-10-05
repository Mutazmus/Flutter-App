// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:markazy/pages/Homepage.dart';
import 'package:markazy/pages/Itempage.dart';
import 'package:markazy/pages/Signup.dart';

import 'package:markazy/pages/aboutus.dart';
import 'package:markazy/pages/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green, primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Loginpage(),
        "homepage": (context) => Homepage(),
        "itempage": (context) => Itempage(),
        "signup": (context) => Signup(),
        "loginpage": (context) => Loginpage(),
        "about_us": (context) => About_us(),
      },
    );
  }
}
