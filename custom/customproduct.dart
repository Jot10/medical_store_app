import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'package:flutter/widgets.dart';
import 'package:medical_store_mobile_app/Routes/routes.dart';
import 'package:medical_store_mobile_app/const/colors.dart';
import 'package:medical_store_mobile_app/const/style.dart';
//import 'package:medical_store_mobile_app/screens/home/description.dart';

class customProduct extends StatelessWidget {
  const customProduct({super.key, required this.productimage, required this.productdescription, required this.productdesc2, required this.price, required this.rating, required this.producttag, required this.tag});
final String productimage;
final String productdescription;
final String productdesc2;
final String price;
final String rating;
final String producttag;
final String tag;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {
        router.go('/navscreen/category/description');
                     // Navigator.push(context,MaterialPageRoute(builder: (context) => DescriptionScreen(),));
                    },
      child: Container(height:239, width: 159.93,decoration: 
      BoxDecoration(borderRadius: BorderRadius.circular(9),color: whitecolor,
      border: Border.all(width: 1, color: Colors.grey)),
                child: Stack(
                  children: [
                    Container(height: 158,width: 173.74,decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),color: greycont,
                      image: DecorationImage(image: AssetImage(productimage,),scale: 1.3)
                    ),),
                    Positioned(
                      top: 0,left: 0,
                      child:Stack(children: [Image.asset(producttag),
                      Positioned(
                        top: 10,left: 6,
                        child: Transform.rotate(
                          angle: math.pi/-4.5,
                          child: Text(tag, style: textstylew700.copyWith(color: whitecolor, fontSize: 11),)),
                      )
                      ]) ),
                    Container(constraints: BoxConstraints(maxHeight: double.infinity),width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 158,left: 8),
                      child: Text(productdescription,style: TextStyle(fontSize: 11),),
                    ),),
                     Container(constraints: BoxConstraints(maxHeight: double.infinity),width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,top: 173),
                      child: Text(productdesc2,style: TextStyle(fontSize: 11),),
                    ),),
                     Container(constraints: BoxConstraints(maxHeight: double.infinity),width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0,top: 190),
                      child: Text(price,style: textstylew700.copyWith(fontSize: 15),),
                    ),),
                     Positioned(
                      top: 190,right: 0,
                      child: Container(height: 25,width: 55,
                      decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomLeft: Radius.circular(30)),color: Colors.amber),
                      child: Row(children: [Padding(
                        padding: const EdgeInsets.only(left: 4,right: 4),
                        child: Icon(Icons.star,color: whitecolor,size: 18,),
                      ),
                      Text('4.2',style: whitetext,)],),
                      ))
      
                    
                    
      
      
                  ],
                ), ),
    );
  }
}