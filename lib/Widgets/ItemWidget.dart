// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class ItemWidget extends StatefulWidget {
  const ItemWidget({super.key});

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

//List<Products> gridViewTiles = [];

class _ItemWidgetState extends State<ItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Top",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            Text(
              "See All",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            )
          ],
        ),
      ),
      GridView.count(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        crossAxisSpacing: 7,
        mainAxisSpacing: 7,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        shrinkWrap: true,
        children: [
          for (int i = 1; i < 13; i++)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "itempage");
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Image.asset(
                        "images/$i.png",
                        height: 80,
                        width: 80,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Item Title",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Fresh Fruits",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$20",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            /*   Future getTotal(item) async {
                      int counter = 0;

                        _totalPrice.add(int.parse(item));
                     _totalPrice.forEach((element) => counter += element);

                 print('LIST: $_totalPrice');
               print('SUM: $counter');
                   return counter;
                                }
           */
                          },
                          child: Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(
                                Icons.add_shopping_cart,
                                color: Colors.white,
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
        ],
      )
    ]);
  }
}
