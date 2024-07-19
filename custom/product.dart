import 'package:flutter/material.dart';
import 'package:medical_store_mobile_app/const/colors.dart';
import 'package:medical_store_mobile_app/const/style.dart';

class product extends StatelessWidget {
  const product({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(height:239, width: 159.93,decoration: 
    BoxDecoration(borderRadius: BorderRadius.circular(9),color: whitecolor),
              child: Stack(
                children: [
                  Container(height: 147.22,width: 158.15,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),color: greycont,
                    image: DecorationImage(image: AssetImage('assets/image138.png',),)
                  ),),
                  Container(constraints: BoxConstraints(maxHeight: double.infinity),width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 150,left: 8),
                    child: Text('Accu-check Active',style: TextStyle(fontSize: 11),),
                  ),),
                   Container(constraints: BoxConstraints(maxHeight: double.infinity),width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0,top: 168),
                    child: Text('Test Strip',style: TextStyle(fontSize: 11),),
                  ),),
                   Container(constraints: BoxConstraints(maxHeight: double.infinity),width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0,top: 188),
                    child: Text('Rs.112',style: textstylew700.copyWith(fontSize: 15),),
                  ),),
                  Positioned(
                    top: 200,right: 0,
                    child: Container(height: 25,width: 45,
                    decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomLeft: Radius.circular(30)),color: Colors.amber),
                    child: Row(children: [Padding(
                      padding: const EdgeInsets.only(left: 4,right: 4),
                      child: Icon(Icons.star,color: whitecolor,size: 18,),
                    ),
                    Text('2',style: whitetext,)],),
                    ))
                    // Image.asset('assets/rating_label.png'))

                  
                  


                ],
              ), );
  }
}