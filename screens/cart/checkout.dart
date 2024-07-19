import 'package:flutter/material.dart';
import 'package:medical_store_mobile_app/Routes/routes.dart';
import 'package:medical_store_mobile_app/const/colors.dart';
import 'package:medical_store_mobile_app/const/style.dart';
//import 'package:medical_store_mobile_app/screens/cart/thankyou.dart';


class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key, this.price});
final dynamic price;
  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
   String _radioBtnVal = "";

  _handleChange(String? value) {
    setState(() {
      _radioBtnVal = value.toString();
    });
  }

  bool x = true;
  bool y = false;
  bool selected = false;
  bool selected2 = false;

  @override
  Widget build(BuildContext context) {

   var mywidth= MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        title: Text("Checkout",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("Items in your cart",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xFF090F47).withOpacity(.45)),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:8.0),
                  child: Container(
                    child:  Column(
                          children: [
                            Text("Add more",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Color(0xFF090F47).withOpacity(.45)),),
                            Text('${widget.price}',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
            
                          ],
                        )
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:20,bottom: 10),
            child: Text("Delivery Address",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20,0,20,10.0),
                child: InkWell(
                  onTap: () {
                    _handleChange('Home');

                   
                  },
                  child:  _radioBtnVal == 'Home'? Container(
                    height: 110,
                  
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ):
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,0,0,0),
                    child: Container(
                      height: 110,
                    
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  )
                  
                  ,
                ),
              ),
              Positioned(
                top: 20,
                left: 40,
                child: Radio<String>(
                  activeColor: blueapp,
            value: "Home",
            groupValue: _radioBtnVal,
            onChanged: _handleChange,
          
          ),
              ),
              Positioned(
                top: 20,
                left: 100,
                child: Container(
                  height: 70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Home",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16)),
                      Text("(205) 555-024",style: greytext.copyWith(color: Color(0xFF090F47).withOpacity(0.45))),
                      Text("1786 Wheeler Bridge",style: greytext.copyWith(color: Color(0xFF090F47).withOpacity(0.45))),
                    ]
                  ),
                ),
              ),
              Positioned(
                top: 20,
                right: 30,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/Group 3648.png"),fit: BoxFit.fill)
                  ),
                ),
              )
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20,0,20,10.0),
                child: InkWell(
                  onTap: (){
                    _handleChange('Office');
                
                  },
                  child:  _radioBtnVal == 'Office' ?Container(
                    height: 110,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ):
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,0,0,0),
                    child: Container(
                      height: 110,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  )
                  
                  
                  ,
                ),
              ),
              Positioned(
                top: 20,
                left: 40,
                child: Radio(
                  activeColor: blueapp,
                  value: "Office",
            groupValue: _radioBtnVal,
            onChanged: _handleChange,
           
          ),
              ),
              Positioned(
                top: 20,
                left: 100,
                child: Container(
                  height: 70,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Office",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16)),
                      Text("(205) 555-024",style: greytext.copyWith(color: Color(0xFF090F47).withOpacity(0.45))),
                      Text("1786 w Dallas St underfield",style:greytext.copyWith(color: Color(0xFF090F47).withOpacity(0.45))),
                    ]
                  ),
                ),
              ),
              Positioned(
                top: 20,
                right: 30,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/Group 3648.png"),fit: BoxFit.fill)
                  ),
                ),
              )
            ],
          ),
          Padding(
                padding: const EdgeInsets.only(right:20.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.add,color: Color(0xFF4157FF),),
                      ),
                      Text("Add Address",style: TextStyle(color: Color(0xFF4157FF)),)
                    ],
                  )
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Payment Method",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height:70,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10,0,10,0),
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(image: AssetImage("assets/imgae_section.png"))
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Cash on Delivery",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                shape: BoxShape.circle
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                   Padding(
                              padding: const EdgeInsets.fromLTRB(20,0,20,10),
                              child: ElevatedButton(
                   style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(blueapp)),
                  onPressed: (){
                    router.go('/navscreen/category/description/gotocart/chechkout/thankyou');
                    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => thankyou(),));
                  }, 
                  child: Container(
                    alignment: Alignment.center,
                    width: mywidth,
                    child: Text("Pay Now",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color: Color(0xFFFFFFFF)),))
                  ),
                            ),
                ],
              )
        ],
      ),
    );
}}