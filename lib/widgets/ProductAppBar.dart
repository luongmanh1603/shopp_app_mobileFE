import 'package:flutter/material.dart';

class ProductAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            size: 30,
            color: Color(0xff4c53A5),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Product",
            style: TextStyle(
              color: Color(0xff4c53A5),
              fontSize: 23,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        Spacer(),
        Icon(
          Icons.favorite,
          size: 30,
          color: Color.fromARGB(255, 255, 0, 0),
        ),
      ],),
    );
  }
}