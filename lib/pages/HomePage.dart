import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/widgets/CategoryWidget.dart';
import 'package:shop_app/widgets/HomeAppBar.dart';
import 'package:shop_app/widgets/ProductWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            // height: 800,
            padding: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(children: [
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    height: 50,
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Search here ...",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.black,
                  ),
                ],),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4C53A5),
                  ),
                ),

              ),
              CategoryWidget(),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Text(
                  "Best Selling",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4C53A5),
                  ),
                ),
              ),
              ProductWidget(),
            ],),
          ),
          
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (index) {},
        backgroundColor: Colors.transparent,
        color: Color(0xFF4C53A5),
        height: 60,
        items: [
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(CupertinoIcons.cart_fill, size: 30,color: Colors.white),
          Icon(Icons.home, size: 30,color: Colors.white),
          

        ],
      ),
    );
  }

}