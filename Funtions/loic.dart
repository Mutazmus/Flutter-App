import 'package:flutter/material.dart';

class Products {
  int id;
  int price;
  String name;
  String subname;
  Image picture;

  Products(this.id, this.price, this.name, this.subname, this.picture);

  List<Products> product = [
    Products(1, 200, 'Apple', 'subname', Image.asset("1.png")),
    Products(1, 300, "Banana", "nice to eat", Image.asset("2.png")),
    Products(1, 400, "Lemon", "nice to eat", Image.asset("3.png")),
    Products(1, 500, "Khoh", "nice to eat", Image.asset("4.png")),
    Products(1, 600, "rrr", "nice to eat", Image.asset("5.png")),
    Products(1, 700, "yyy", "nice to eat", Image.asset("6.png")),
    Products(1, 800, "www", "nice to eat", Image.asset("7.png")),
    Products(1, 900, "qqq", "nice to eat", Image.asset("8.png")),
    Products(1, 1000, "xxx", "nice to eat", Image.asset("9.png")),
    Products(1, 1100, "zzzz", "nice to eat", Image.asset("10.png"))
  ];

  /*List<Products> productliSt = [];

  List products = [
    Products(1, 200, 'Apple', 'subname', Image.asset("1.png")),
    Products(1, 300, "Banana", "nice to eat", Image.asset("2.png")),
    Products(1, 400, "Lemon", "nice to eat", Image.asset("3.png")),
  ];
*/

}


//List<Products> prpductlist = [
 // prpductlist.add(1, "hjk", "hj", hjjk),
//];





  /*   
Search 


                         void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  */