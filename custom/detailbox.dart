import 'package:flutter/material.dart';
import 'package:medical_store_mobile_app/const/colors.dart';


Container detailbox({
  String text = ' ',
  double? mywidth
})
{
  return Container(
                  height: 30,
                  width: mywidth,
                  child: Text(text,style: TextStyle(color: textcolor,fontSize: 16,fontWeight: FontWeight.bold),)
                  );
}