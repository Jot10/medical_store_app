import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_store_mobile_app/const/colors.dart';

class blueButton extends StatelessWidget {
  const blueButton({super.key, required this.buttonsays});
final String buttonsays;
  @override
  Widget build(BuildContext context) {
    var mywidth= MediaQuery.of(context).size.width;
    return Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
              child: Container(width: mywidth,height: 50,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: blueapp),
                child: Center(child: Text(buttonsays, style: TextStyle(color: Colors.white),)),
              ),
            );
  }
}