import 'package:flutter/material.dart';
import 'package:medical_store_mobile_app/const/colors.dart';
import 'package:medical_store_mobile_app/const/style.dart';

class EmptyCart extends StatefulWidget {
  const EmptyCart({super.key});

  @override
  State<EmptyCart> createState() => _EmptyCartState();
}

class _EmptyCartState extends State<EmptyCart> {
  @override
  Widget build(BuildContext context) {
    var myheight = MediaQuery.of(context).size.height;
    var mywidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
            height: myheight/2.5,
            width: mywidth/1.2,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/Group 6215.png'))
            ),
            ),
          ),
          Container(
            height: 30,
        width: mywidth,
        child: Center(child: Text('Whoops', style: textstylew500.copyWith(fontSize: 16,color: textcolor),)),
        ),
        SizedBox(
          height: 30,
        ),
          Container(
          height: 30,
        width: mywidth,
            child: Text('Your cart is empty!', style: greytext.copyWith(fontSize: 15), textAlign: TextAlign.center)),
        ],
      ),
    );
  }
}