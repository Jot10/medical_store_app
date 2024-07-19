import "package:flutter/material.dart";


Container ratingbox ({
String leading = ' ',
String actiontext = ' ',
Color ? mycolor ,
double ? width,
double ? boxwidth
})
{
  return     Container(
                            height: 20,
                            width: width,
                            child:  
                            Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 15,
                                  child: Text(leading,style: TextStyle(color:mycolor,fontSize: 16),),
                                ),
                                  Container(
                                  height: 20,
                                  width: 15,
                                  child: Image.asset('assets/Star 6.png')
                                ),
                                SizedBox(width: 5,),
                                Container(
                                   height: 25,
                                  width: 125,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Center(
                                    child: Stack(
                                      children: [
                                      Container(
                                        height: 5,
                                        width: 125,
                                        decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(10),
                                       color: Colors.grey.shade300,
                                  ),
                                      ),
                                       Container(
                                        height: 5,
                                        width: boxwidth,
                                        decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(10),
                                       color: Colors.amber,
                                  ),
                                      ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5,),
                                  Container(
                                  height: 20,
                                  width: 50,
                                  child: Text(actiontext,style: TextStyle(color:mycolor,fontSize: 14),),
                                ),
                              
                              ],
                           ),
                          );
}