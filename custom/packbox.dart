import 'package:flutter/material.dart';


Container packbox ({
String labelText = ' ',
String hinttext = ' ',
Color ? selectedcolor,
Color ? hintcolor,
required Color  bordercolor,
})
{
  return Container(
                        height: 80,
                        width: 84,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: bordercolor,
                          ),
                          color:Color.fromRGBO(245, 245, 245, 1)
                        ),
                        child:Column(
                          children: [
                            Container(
                              height: 30,
                              width: 80,
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(labelText,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: selectedcolor),),
                              )),
                            Text(hinttext,style: TextStyle(fontSize: 12, color: hintcolor),
                            )
                          ],
                        ),
                      );
}