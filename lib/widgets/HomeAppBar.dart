import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';


class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Color(0xff4c53A5),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
               "Shop App",
              style: TextStyle(
                color: Color(0xff4c53A5),
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
            ),
         Spacer(),
         badges.Badge(
          badgeContent: Text("3", style: TextStyle(color: Colors.white),),
          child: InkWell(
            onTap: (){},
            child: Icon(
              Icons.shopping_bag_outlined
            ),
          ),
        ),   
        ],
      ),
    );
  }
  
}