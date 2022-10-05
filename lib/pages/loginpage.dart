// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double heightOfImage = MediaQuery.of(context).size.height * 35.0 / 100.0;

    return Scaffold(
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        // ignore: unnecessary_new
        child: new Column(
          children: <Widget>[
            new Container(
              height: 250,
              child: Image.asset("images/splash.png",
                  alignment: Alignment.topCenter),
            ),
            Container(
              margin: EdgeInsets.only(top: 0),
              child: Text(
                "MARKAZY",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 70,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 0, bottom: 20),
              child: Text(
                "Buy Fresh Fruits",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            new Container(
                decoration: new BoxDecoration(
                    color: Colors.green,
                    borderRadius: new BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0))),
                child: new Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: new Column(
                    children: <Widget>[
                      new Align(
                        alignment: Alignment.topLeft,
                        child: new Text(
                          "Sign in",
                          style: new TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      new SizedBox(height: 5.0),
                      new Container(
                        height: 50.0,
                        decoration: new BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: new BorderRadius.circular(10.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
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
                      new SizedBox(height: 5.0),
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
                              color: Colors.blue),
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),

                      /*    new Align(
                        alignment: Alignment.center,
                        child: new Text("Forgot your password?",
                            style: new TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                            )),
                      ),
                      */
                      SizedBox(height: 10.0),
                      new Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text("Don't have an account?",
                                style: new TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0,
                                )),
                            new InkWell(
                              child: Ink(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blueGrey),
                                child: Text(
                                  "Sign up",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0,
                                    color:
                                        Theme.of(context).secondaryHeaderColor,
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                    context, "signup");
                              },
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
