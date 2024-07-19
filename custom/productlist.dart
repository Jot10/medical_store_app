import 'package:flutter/material.dart';
import 'package:medical_store_mobile_app/const/colors.dart';

class productList extends StatelessWidget {
  const productList({super.key, required this.typeproductimage, required this.typeproductdesc});
final String typeproductimage;
final String typeproductdesc;
  @override
  Widget build(BuildContext context) {
    return Container(height: 162,width: 112.43,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: greycont),
            child: Column(
              children: [Image.asset(typeproductimage),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(typeproductdesc),
              )],
            ),);
  }
}