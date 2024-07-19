import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medical_store_mobile_app/Routes/routes.dart';

import 'package:medical_store_mobile_app/const/colors.dart';
import 'package:medical_store_mobile_app/const/style.dart';

class thankyou extends StatefulWidget {
  const thankyou({super.key});

  @override
  State<thankyou> createState() => _thankyouState();
}

class _thankyouState extends State<thankyou> {
  @override
  Widget build(BuildContext context) {
    var mywidth= MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
          width: mywidth,
          child: Image.asset('assets/taddaaa_image.png'),
        ),
        SizedBox(height: 10,),

        Container(
        width: mywidth,
        child: Center(child: Text('Thank You', style: textstylew700.copyWith(fontSize: 25,color: textcolor),)),),

        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 60, right: 20),
          child: Container(width: mywidth,
          child: Column(
            children: [
              Text('Your Order will be delivered with invoice', style: greytext.copyWith(fontSize: 15), textAlign: TextAlign.center),
              Row(
                children: [
                  RichText(text: TextSpan(text: '#9ds69hs', style: TextStyle(color: textcolor).copyWith(fontSize: 15,fontWeight:FontWeight.bold ),),
                  textAlign: TextAlign.start,),
                   Text('. You can Track the delivery in the', style: greytext.copyWith(fontSize: 15),),
                ],
              ),
               Text('order section.', style: greytext.copyWith(fontSize: 15),)
            ],
          ),),
        ),
        SizedBox(height: 100,),

        SizedBox(
            width: 330,
            height: 45,
            child:ElevatedButton(
            onPressed: (){
              router.go('/navscreen');
             //Navigator.pop(context);
            },
            child: Text('CONTINUE Order',style: TextStyle(color: Colors.white),),
            style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(blueapp),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),)
            ),
            
            )
            
          )
        ]
      )
    );
  }
}