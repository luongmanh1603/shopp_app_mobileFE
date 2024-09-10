import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        for (int i = 1; i < 5; i++)
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/$i.jpg", height: 40, width: 40,),
              Text(
                "Clothes", 
                style: TextStyle(
                  color: Color(0xFF4C53A5),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                ),
            ],),
        ),
      ],),
    );
  }
  
}