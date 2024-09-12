import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shop_app/widgets/ProductAppBar.dart';
import 'package:shop_app/widgets/ProductBottomNavBar.dart';


// ignore: must_be_immutable
class ProductPage extends StatelessWidget {
  
  List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    

  ];

  ProductPage({super.key});



  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Color(0xFFEDECF2),
       body: ListView(
        children: [
          ProductAppBar(),
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              "images/1.jpg",
              height: 250,
            ),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEX,
            height: 20,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50, bottom:20 ),
                    child: Row(
                      children: [
                        Text(
                          "Product Name",
                          style: TextStyle(
                            color: Color(0xFF4C53A5),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 20,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.favorite,
                            color: Color(0xFF4C53A5),
                          ),
                          onRatingUpdate: (index) {},
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                 BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: Offset(0, 3),
                                 ),
                                ]
                              ),
                              child: Icon(
                                CupertinoIcons.minus,
                                size: 18,
                              ),
                            ),
                            Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "1",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4C53A5),
                        ),
                      ),
                    ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                 BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: Offset(0, 3),
                                 ),
                                ]
                              ),
                              child: Icon(
                                CupertinoIcons.plus,
                                size: 18,
                              ),
                            ),
                          ],
                        )

                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "By inputting basic details about your product, this generator leverages advanced AI technology to instantly produce high-quality,By inputting basic details about your product, this generator leverages advanced AI technology to instantly produce high-quality, engaging product descriptions that highlight the key features and benefits of your products.  ",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Color(0xFF4C53A5),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Text(
                          "Size:",
                          style: TextStyle(
                            color: Color(0xFF4C53A5),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Row(children: [
                          for (var i = 37; i < 44; i++)
                          Container(
                            height: 30,
                            width: 30,
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: Text(
                              "$i",
                              style: TextStyle(
                                color: Color(0xFF4C53A5),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            
                          ),
                        ],)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Text(
                          "Color:",
                          style: TextStyle(
                            color: Color(0xFF4C53A5),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Row(children: [
                          for (var i = 0; i < 5; i++)
                          Container(
                            height: 30,
                            width: 30,
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: colors[i],
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            
                            
                          ),
                        ],)
                      ],
                    ),
                  ),
                  
                ],),
              ),
            ),
          ),
        ],
       ),
       bottomNavigationBar: ProductBottomNavBar(),
   );
  }
  
}