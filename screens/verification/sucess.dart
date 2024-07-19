import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_store_mobile_app/Routes/routes.dart';
import 'package:medical_store_mobile_app/const/style.dart';
import 'package:medical_store_mobile_app/custom/bluebutton.dart';
//import 'package:medical_store_mobile_app/screens/navigation/navscreen.dart';

class verificationSuccess extends StatefulWidget {
  const verificationSuccess({super.key});

  @override
  State<verificationSuccess> createState() => _verificationSuccessState();
}

class _verificationSuccessState extends State<verificationSuccess> {
  @override
  Widget build(BuildContext context) {
    var mywidth= MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [Container(
          width: mywidth,
          child: Image.asset('assets/taddaaa_image.png'),
        ),
        SizedBox(height: 10,),
        Container(width: mywidth,
        child: Center(child: Text('Phone Number Verified', style: textstylew700.copyWith(fontSize: 25),)),),
SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 60, right: 60),
          child: Container(width: mywidth,
          child: Text('Congratulations, your phone number has been verified. you can start using the app', style: greytext.copyWith(fontSize: 15),
          textAlign: TextAlign.center,),),
        ),
        SizedBox(height: 100,),
        InkWell(
          onTap: () {
            router.go('/navscreen');
            //Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => bottomnavigation(),));
          },
          child: blueButton(buttonsays: 'CONTINUE'))
        ],
      )
    );
  }
}