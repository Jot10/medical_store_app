import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_store_mobile_app/const/colors.dart';

Container profilebox ({
String text = ' ',
String image = ' ',
})
{
  return   Container(
            height: 50,
            width: 350,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 16,
                        width: 16,
                        child: SvgPicture.asset(image)
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 20,
                        width: 100,
                        child: Text(text,style: TextStyle(fontSize: 15,color: textcolor),),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 2),
                  child: Container(
                    height: 16,
                    width: 16,
                    child: Icon(Icons.arrow_forward_ios,size: 12,),
                  ),
                ),       
              ],
            )
          );
}