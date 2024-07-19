import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medical_store_mobile_app/Routes/routes.dart';
import 'package:medical_store_mobile_app/const/colors.dart';
//import 'package:medical_store_mobile_app/screens/onboarding/onboarding.dart';
//import 'package:animated_splash_screen/animated_splash_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4),(){
      router.go('/onboarding');
      //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>onBoarding(),));

    });

  }

  @override
  Widget build(BuildContext context) {
    var mywidth= MediaQuery.of(context).size.width;
    var myheight= MediaQuery.of(context).size.height;
    return Scaffold(
       body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
          Stack(
          children: [
            Container(height: myheight,width: mywidth,color: blueapp,),
            Container(height: myheight,width: mywidth,
            child: Image.asset('assets/logo_background.png', fit: BoxFit.fill,),),
            Positioned(
              left: 164,top: 300,
              child: CircleAvatar(radius: 40,backgroundColor: whitecolor,
              child: Image.asset('assets/Vector.png'),)
              ),
              Padding(
                padding: const EdgeInsets.only(left: 129, top: 400),
                child: Text('Nilkanth Medical',style: TextStyle(fontWeight: FontWeight.normal, color: whitecolor,fontStyle: FontStyle.italic, fontSize: 20),),
              )
          ],
          ),
         // CircleAvatar(radius: 40,backgroundColor: whitecolor,)
         ],
       ),
    );
  }
}