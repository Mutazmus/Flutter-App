// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class About_us extends StatelessWidget {
  const About_us({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: Center(
          child: Column(children: [
            Container(
              padding: EdgeInsets.all(15),
              height: 300,
              width: double.infinity,
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(context, "homepage");
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                " Information Technology Solutions Co Ltd ,Contact Us On +249910234364",
                style: TextStyle(
                    fontSize: 31,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ]),
        ));
  }
}
