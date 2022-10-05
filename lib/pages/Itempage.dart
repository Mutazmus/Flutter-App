// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/BottomBar.dart';

class Itempage extends StatelessWidget {
  const Itempage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              height: 350,
              width: double.infinity,
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/1.png"),
                ),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pop(
                    context,
                  );
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.green,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.green,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                      bottom: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Fruits Title",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(3),
                              //height: 350,
                              //  width: double.infinity,
                              alignment: Alignment.topLeft,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 2,
                                      blurRadius: 8,
                                    ),
                                  ]),
                              child: Icon(CupertinoIcons.minus),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                "01",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                /*     Future getTotal(item) async {
                                int counter = 0;

                          _totalPrice.add(int.parse(item));
                                _totalPrice.forEach((element) => counter += element);

                                 print('LIST: $_totalPrice');
                                                 print('SUM: $counter');
                                         return counter;
                                         }  
                     */
                              },
                              child: InkWell(
                                onTap: () {
                                  /*    deleteSumItem(int item) {
                                   _totalPrice.remove(item);
                                   } 
                            */
                                },
                                child: Container(
                                  padding: EdgeInsets.all(3),
                                  //height: 350,
                                  //  width: double.infinity,
                                  alignment: Alignment.topLeft,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 8,
                                        ),
                                      ]),
                                  child: Icon(CupertinoIcons.plus),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 30,
                      ),
                      Text(
                        "4.5(230)",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Description:",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Here Is The Description About The Product ,Every Sinle Thins About The Product Here Is The Description About The Product ,Every Sinle Thins About The Product Here Is The Description About The Product ,Every Sinle Thins About The Product Here Is The Description About The Product ,Every Sinle Thins About The Product",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery Time:",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(
                        CupertinoIcons.clock,
                        color: Colors.white,
                      ),
                      SizedBox(width: 3),
                      Text(
                        "20 minutes",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
