// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double heightOfImage = MediaQuery.of(context).size.height * 35.0 / 100.0;

    return Scaffold(
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        // ignore: unnecessary_new
        child: new Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(25),
              height: 60,
              width: double.infinity,
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(context, "loginpage");
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            new Container(
              height: 200,
              child: Image.asset("images/splash.png",
                  alignment: Alignment.topCenter),
            ),
            // ignore: unnecessary_new
            new Container(
                decoration: new BoxDecoration(
                    color: Colors.green,
                    borderRadius: new BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: new Column(
                    children: <Widget>[
                      new Align(
                        alignment: Alignment.topLeft,
                        child: new Text(
                          "Register",
                          style: new TextStyle(
                            fontSize: 45.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Container(
                        height: 50.0,
                        decoration: new BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: new BorderRadius.circular(10.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new TextField(
                            decoration: new InputDecoration(
                              hintText: "User name",
                              icon: new Icon(
                                Icons.person_outline,
                                color: Colors.blueGrey.shade500,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      new SizedBox(height: 25.0),
                      new Container(
                        height: 50.0,
                        decoration: new BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new TextField(
                            obscureText: true,
                            decoration: new InputDecoration(
                              hintText: "Phone",
                              icon: new Icon(
                                Icons.phone,
                                color: Colors.blueGrey.shade500,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      new Container(
                        height: 50.0,
                        decoration: new BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: new TextField(
                            obscureText: true,
                            decoration: new InputDecoration(
                              hintText: "Password",
                              icon: new Icon(
                                Icons.lock_outline,
                                color: Colors.blueGrey.shade500,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      new SizedBox(height: 30.0),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, "homepage");
                        },
                        //for animation in contaner
                        child: Ink(
                          padding: EdgeInsets.symmetric(
                              horizontal: 80, vertical: 16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.blueGrey),
                          child: Text(
                            "Register",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      new SizedBox(height: 20.0),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
