import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medical_store_mobile_app/Routes/routes.dart';
import 'package:medical_store_mobile_app/const/colors.dart';
import 'package:medical_store_mobile_app/const/style.dart';
import 'package:medical_store_mobile_app/custom/categories.dart';
//import 'package:medical_store_mobile_app/custom/categorypage.dart';
import 'package:medical_store_mobile_app/custom/product.dart';
//import 'package:medical_store_mobile_app/screens/home/homecart.dart';
//import 'package:medical_store_mobile_app/screens/home/homenoti.dart';
//import 'package:medical_store_mobile_app/screens/home/slivercategory.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List categoryimage=['assets/Ellipse 7.png','assets/Ellipse 8.png','assets/Ellipse 9.png','assets/Ellipse 10.png'];
  List catname=['Dental', 'Wellness', 'Homeo', 'Eye care'];
  @override
  Widget build(BuildContext context) {
     var mywidth= MediaQuery.of(context).size.width;
     var myheight= MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(color: appbackground,
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(width: mywidth,height: myheight/3.4,
                
                  decoration: BoxDecoration(
                    color: blueapp,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                  ),),
                  Positioned(
                    top: 60,left: 0,
                    child: Image.asset('assets/Ellipse 18.png')),
          
                      Positioned(
                    top: 35,left: 35,
                    child: Image.asset('assets/photo 1.png')),
          
                     Positioned(
                    top: 50,right: 20,
                    child: InkWell(
                      onTap: () {
                        router.go('/navscreen/cart');
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => homecart(),));
                      },
                      child: Image.asset('assets/group1184.png')),),
          
                     Positioned(
                    top: 50,right: 60,
                    child: InkWell(
                       onTap: () {
                        router.go('/navscreen/notification');
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => homenotification(),));
                      },
                      child: Image.asset('assets/group3635.png'))),
          
                    Positioned(
                      top: 100,left: 35,
                      child: Container(width: mywidth,height: 60,
                      child: Text('Hi, Rahul',style: textstylew700.copyWith(color: whitecolor, fontSize: 25),),)),
          
                      Positioned(
                      top: 135,left: 35,
                      child: Container(width: mywidth,height: 60,
                      child: Text('Welcome to Nikanth Medical Store',style:whitetext),),
                      ),
          
                      Positioned(
                      top: 200,left: 35,right: 35,
                      child: Container(
                        width: mywidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
              boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color
            spreadRadius: 1, // Spread radius
            blurRadius: 5, // Blur radius
            offset: Offset(0, 3), // Offset in the vertical direction
          ),
              ],
            ),
                        child: TextField(decoration: InputDecoration(
                          filled: true,
                          fillColor: whitecolor,
                          
                          hintText: 'Search Medicine & Healthcare products',
                          hintStyle: TextStyle(fontSize: 13),
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40),borderSide: BorderSide.none)
                        ),),
                      )
                      ),
          
                  
                ],
              ),
          
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 60),
                child: Container(
                  width: mywidth,
                  child: Text('Top Categories', style: textstylew700.copyWith(fontSize: 15),)),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(width: mywidth,constraints: BoxConstraints(maxHeight: double.infinity),
                child: InkWell(
                  onTap: () {
                    router.go('/navscreen/category');
                    //Navigator.push(context,MaterialPageRoute(builder: (context) => sliverCategory(),));
                  },
                  child: SizedBox(width: mywidth,
                  height: 135,
                    child: 
                    ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: catname.length,
                      itemBuilder:(context, index) {
                         return Row(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(left: 8,right: 8),
                               child: Categories(coloredimage: categoryimage[index], categoryname:catname[index]),
                             ),
                           ],
                         );
                      },
                    ),
                  ),
                ),
                ),
              ),
              SizedBox(height: 10,),
                        
              Image.asset('assets/home_offer_image_section.png'),
               Padding(
                padding: const EdgeInsets.only(left: 30, top:20, right: 40),
                child: Container(
                  width: mywidth,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Deals of the Day', style: textstylew700.copyWith(fontSize: 15),),
                      Text('More', style: bluetext.copyWith(fontSize: 15)),
                    ],
                  )),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    product(),
                    product()
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    product(),
                    product()
                  ],
                ),
              )
          
          
            ],
          ),
        ),
      ),
    );
  }
}