import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Container button ({
String text= ' ',
Color ? mycolor
})
{
  return Container(
     width: 350,
     height: 45,
  child: Center(child: Text(text,style: TextStyle(color: Colors.white),)),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(24),
    color: mycolor
  ),
  
  );
}