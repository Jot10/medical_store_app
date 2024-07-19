import 'package:flutter/material.dart';
import 'package:medical_store_mobile_app/const/colors.dart';
import 'package:medical_store_mobile_app/const/style.dart';

class Categories extends StatelessWidget {
  const Categories({super.key, required this.coloredimage, required this.categoryname});
final String coloredimage;
final String categoryname;
  @override
  Widget build(BuildContext context) {
    return  Container(height: 120,width: 73.17,
                      decoration: BoxDecoration(
                        color: whitecolor,
                      borderRadius: BorderRadius.circular(70),
                       boxShadow: [
                        BoxShadow(
                         color: Colors.grey.withOpacity(0.5), // Shadow color
                         spreadRadius: 1, // Spread radius
                         blurRadius: 5, // Blur radius
                         offset: Offset(0, 3), // Offset in the vertical direction
                         ),
                        ],
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            Image.asset(coloredimage),
                           SizedBox(height: 5,),
                            Center(child: Text(categoryname,style: textstylew500.copyWith(fontSize: 12),))
                          ],
                        ),
  
                        );
  }
}