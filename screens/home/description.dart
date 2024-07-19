import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_store_mobile_app/Routes/routes.dart';
import 'package:medical_store_mobile_app/const/colors.dart';
import 'package:medical_store_mobile_app/const/style.dart';
import 'package:medical_store_mobile_app/custom/button.dart';
import 'package:medical_store_mobile_app/custom/detailbox.dart';
import 'package:medical_store_mobile_app/custom/packbox.dart';
import 'package:medical_store_mobile_app/custom/rating.dart';
//import 'package:medical_store_mobile_app/screens/cart/slivercart.dart';



class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({super.key});

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}


class _DescriptionScreenState extends State<DescriptionScreen> {
  List slide = ['assets/image 21.png','assets/image 21.png','assets/image 21.png',];
  PageController pages = PageController(initialPage: 0);
  int currentindex = 0;
  var x=true;
  var y=false;
  var z= false;
 
  @override
  Widget build(BuildContext context) {
    var mywidth = MediaQuery.of(context).size.width;
   
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 28,
              width: 28,
              child: SvgPicture.asset('assets/ico_notification.svg'),
            ),
          ),
           Padding(
             padding: const EdgeInsets.only(right: 20),
             child: Container(
              height: 28,
              width: 28,
              child: SvgPicture.asset('assets/ico_shopping_bag.svg'),
                       ),
           )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
          Container(
            width: mywidth,
            height: 40,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Sugar Free Gold Low Calories',style: textstylew700.copyWith(fontSize: 22, color: textcolor)),
            ),
          ),
            Container(
            width: mywidth,
            height: 40,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Etiam mollis metus non purus',style: TextStyle(fontSize: 14, color: greycolor)),
            ),
          ),
          Container(
            height: 200,
            width: mywidth,
           // color: Colors.amber,
            child: PageView.builder(
              controller: PageController(),
              scrollDirection: Axis.horizontal,
              itemCount: slide.length,
              onPageChanged: (value) {
                setState(() {
                  currentindex = value;
                });
              },
              itemBuilder:(context, index) {
                return Stack(
                  children: [
                  Center(
                    child: Container(
                    height: 180,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                     color: Color.fromRGBO(248, 248, 248, 1),
                    ),
                    child: Center(
                      child: Container(
                        height: 156,
                        width: 156,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(slide[index]))),
                       ),
                    ),
                    ),
                  ),]
                );
              },),
          ),
          Container(
            width: mywidth,
            height: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(slide.length, (index) => Padding(
                padding: const EdgeInsets.all(2.0),
                child: CircleAvatar(
                  radius: 3,
                  backgroundColor: currentindex == index
                  ? Colors.blue
                  :Colors.grey
                ),
              )),
            ),
          ),  
          SizedBox(height: 15,),
            Container(
            height: 60,
            width: mywidth,
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: mywidth/1.5,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text('Rs.99', style: TextStyle(decoration: TextDecoration.lineThrough,fontSize: 18,color: Colors.grey)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text('Rs.56',style: TextStyle(color: textcolor,fontSize: 18,fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                     Container(
                      height: 30,
                      width: mywidth/1.7,
                      child: Text('Etiam mollis',style: greytext,))
                    ],
                  ),
                ),
                 Container(
                  height: 100,
                  width: mywidth/3,
               // color: Colors.amber,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          child: SvgPicture.asset('assets/group1163.svg'),
                        ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text('Add to cart',style: TextStyle(color: Color.fromRGBO(0, 106, 255, 1)
                    )),
                    ),
                      ]
                         ),
                  )
                 )
                    ],
                  ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 15,right: 25),
                   child: Divider(height: 2),
                 ),
                 SizedBox(height: 20,),
                detailbox(
                    mywidth: mywidth/1.10,
                    text: 'Package size'
                  ),
                   SizedBox(height: 10,),
                  Container(
                  height: 70,
                  width: mywidth,
                  child: Row(
                    children: [
                      SizedBox(width: 20,),
                    
                       SizedBox(width: 15,),
                      InkWell(
                        onTap: () {
                          setState(() {
                            x= ! x;
                            y=false;
                            z=false;
                          });
                        },
                        child: x? packbox(
                          labelText: 'Rs.106',
                          hinttext: '500 pellets',
                          selectedcolor: Color(0xFFFFA41B),
                          bordercolor: Color(0xFFFFA41B),
                          hintcolor: Color(0xFFFFA41B),
                        ): 
                        packbox(
                          labelText: 'Rs.106',
                          hinttext: '500 pellets',
                          bordercolor: Color(0xFFFFFFFF)
                        )
                      ),
                       SizedBox(width: 15,),
                      InkWell(
                        onTap: () {
                          setState(() {
                            y=!y;
                            x=false;
                            z=false;

                          });
                        },
                        child: y ? packbox(
                          labelText: 'Rs.166',
                          hinttext: '110 pellets',
                          selectedcolor: Color(0xFFFFA41B),
                          bordercolor: Color(0xFFFFA41B),
                          hintcolor: Color(0xFFFFA41B),
                        ):
                         packbox(
                        labelText: 'Rs.166',
                        hinttext: '110 pellets',
                        bordercolor: Color(0xFFFFFFFF)
                      )

                        ,
                      ),
                       SizedBox(width: 15,),
                        InkWell(
                          onTap: (){
                            setState(() {
                              z=!z;
                              x=false;
                              y=false;
                            });
                          },
                          child: z? packbox(
                          labelText: 'Rs.252',
                          hinttext: '300 pellets',
                          selectedcolor: Color(0xFFFFA41B),
                          bordercolor: Color(0xFFFFA41B),
                          hintcolor: Color(0xFFFFA41B),
                           ):
                            packbox(
                        labelText: 'Rs.252',
                        hinttext: '300 pellets',
                        bordercolor: Color(0xFFFFFFFF)
                      )
                                                ,
                        )
                    ],
                  ),
                  ),
                   SizedBox(height: 10,),
                  detailbox(
                    mywidth: mywidth/1.10,
                    text: 'Product Details'
                  ),
                  Container(
                  height: 100,
                  width: mywidth/1.10,
                  child: Text('Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.',)
                  ),
                   SizedBox(height: 10,),
                    detailbox(
                    mywidth: mywidth/1.10,
                    text: 'Ingridients'
                  ),
                    Container(
                  height: 100,
                  width: mywidth/1.10,
                  child: Text('Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.')
                  ),
                   SizedBox(width: 10,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        detailbox(
                        mywidth: mywidth/4,
                        text: 'Expiry Date'
                    ),
                        SizedBox(width: 10,),
                       Container(
                        height: 35,
                        width: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Text('25/12/2023',
                         // style: TextStyle(color:greycolor),
                          ),
                        ),
                                          ),
                      ],
                    ),
                      Row(
                      children: [
                        SizedBox(width: 20,),
                        detailbox(
                        mywidth: mywidth/4,
                        text: 'Brand Name'
                        ),
                       SizedBox(width: 10,),
                       Container(
                        height: 35,
                        width: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text('Something',
                          //style: TextStyle(color:greycolor),
                          ),
                        ),
                                          ),
                      ],
                    ),
                    Container(
                    width: mywidth,
                    height: 120,
                    child: Row(
                      children: [
                       Container(
                        height: 120,
                        width: mywidth/2.5,
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                SizedBox(width: 25,),
                                Container(
                                  height: 50,
                                  width: 50,
                                  child: Text('4.4',style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold),),
                                ),
                                   Container(
                                  height: 50,
                                  width: 50,
                                  decoration:BoxDecoration(
                                    image: DecorationImage(image:AssetImage('assets/Star 1.png'))
                                  ) ,
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: 40,
                              width:  mywidth/2.5,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 32),
                                    child: Text('923 Ratings',style: TextStyle(color:Colors.grey,),),
                                  ),
                                  Text('and 257 Reviews',
                                //  style: TextStyle(color:greycolor),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                       ),
                       VerticalDivider(thickness: 1,),
                       Container(
                       height: 120,
                       width: mywidth/1.8,
                       child: Column(
                        children: [
                          ratingbox(leading: '5',actiontext: '67%',boxwidth: 90, mycolor: Colors.grey),
                          ratingbox(leading: '4',actiontext: '20%',boxwidth: 16,mycolor: Colors.grey),
                          ratingbox(leading: '3',actiontext: '7%',boxwidth: 6,mycolor: Colors.grey),
                          ratingbox(leading: '2',actiontext: '0%',boxwidth: 0,mycolor: Colors.grey),
                          ratingbox(leading: '1',actiontext: '2%',boxwidth: 1.7,mycolor: Colors.grey)
                        ],
                       ),
                       ),
                      ],
                    ),
                    ),
                   SizedBox(height: 30,),
                  detailbox(
                  mywidth: mywidth/1.10,
                  text: 'Erric Hoffman',
                  ),
                 Container(
                  height: 80,
                  width: mywidth/1.10,
                  child: Text('Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas',
                  //style: TextStyle(color:greycolor)
                  )
                  ),
                 InkWell(
                  onTap: () {
                    router.go('/navscreen/category/description/gotocart');
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => slivercart(),));
                  },
                   child: button(
                    text : 'GO TO CART',
                    mycolor: blueapp
                   ),
                 ),
                  SizedBox(height: 30,),
                 
              ],
            ),
            ),
              
        
    );
  }
}