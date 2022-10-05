// ignore_for_file: prefer_const_constructors

import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Widgets/BottomCartSheet.dart';
import '../Widgets/CategoriesWidget.dart';
import '../Widgets/ItemWidget.dart';
import '../Widgets/PopulerItemWidget.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import '../Widgets/drawerpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: <Widget>[
        // First button - decrement
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(0),
              boxShadow: [
                BoxShadow(color: Colors.white.withOpacity(0.0), blurRadius: 2),
              ]),
          child: Badge(
            badgeColor: Colors.red,
            padding: EdgeInsets.all(3),
            badgeContent: Text(
              "3",
              style: TextStyle(color: Colors.white),
            ),
            child: InkWell(
              onTap: () {
                showSlidingBottomSheet(
                  context,
                  builder: (context) {
                    return SlidingSheetDialog(
                        elevation: 0,
                        cornerRadius: 16,
                        builder: (context, state) {
                          return BottomCartSheet();
                        });
                  },
                );
              },
              child: Icon(
                CupertinoIcons.cart,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
        )
      ]),
      backgroundColor: Colors.green,
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                    Text(
                      "What You Want To Buy?",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ]),
            ),
            Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Icon(Icons.search),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 250,
                    child: TextFormField(
                      onTap: () {},
                      decoration: InputDecoration(
                        hintText: "Search Here...",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.filter_list,
                    size: 16,
                  )
                ],
              ),
            ),
            //prodector widets
            Container(
              padding: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CategoriesWidget(),
                  PopulerItemWidget(),
                  ItemWidget(),
                ],
              ),
            )
          ],
        ),
      )),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.green,
                child: DrawerHeader(
                  child: UserAccountsDrawerHeader(
                    accountName: Text(
                      "Ibrahim Musa",
                      style: TextStyle(color: Colors.black),
                    ),
                    accountEmail: Text(
                      "hima545400@gmail.com",
                      style: TextStyle(color: Colors.black),
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor:
                          Theme.of(context).platform == TargetPlatform.iOS
                              ? Colors.black
                              : Colors.white,
                      child: Text("A", style: TextStyle(fontSize: 24)),
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text("Home"),
                trailing: Icon(Icons.home),
                onTap: () {
                  Navigator.of(context).pop();
                  //  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => NewPage("Page One")),);

                  // Navigator.of(context).pushNamed("/a");
                },
              ),
              ListTile(
                title: Text("Massages"),
                trailing: Icon(Icons.mail),
                onTap: () {
                  Navigator.of(context).pop();
                  //  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => NewPage("Page Two")),);

                  // Navigator.of(context).pushNamed("/a");
                },
              ),
              ListTile(
                title: Text("Edite Profile"),
                trailing: Icon(Icons.person),
                onTap: () {
                  Navigator.of(context).pop();
                  //  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => NewPage("Page One")),);

                  // Navigator.of(context).pushNamed("/a");
                },
              ),
              ListTile(
                title: Text("About us"),
                trailing: Icon(Icons.adb),
                onTap: () {
                  Navigator.pushReplacementNamed(context, "about_us");
                },
              ),
              Divider(),
              ListTile(
                  title: Text("Logout"),
                  trailing: Icon(Icons.close),
                  onTap: () =>
                      Navigator.pushReplacementNamed(context, "loginpage")),
            ],
          ),
        ),
      ),
    );
  }
}
