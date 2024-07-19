import 'package:flutter/material.dart';
import 'package:medical_store_mobile_app/const/style.dart';



class newPage extends StatefulWidget {
  const newPage({super.key});

  @override
  State<newPage> createState() => _newPageState();
}

class _newPageState extends State<newPage> {
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
              image: DecorationImage(image: AssetImage('assets/item1.png'))
            ),
            ),
          ),
          Container(
          height: 30,
        width: mywidth,
            child: Text('No network connection', style: greytext.copyWith(fontSize: 15), textAlign: TextAlign.center)),
        SizedBox(
          height: 30,
        ),
          Container(
          height: 30,
        width: mywidth,
            child: Text('Try again', style: TextStyle(color: Colors.blue).copyWith(fontSize: 15), textAlign: TextAlign.center)
            ),
        ],
      ),
    );
  }
}