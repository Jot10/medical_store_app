import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medical_store_mobile_app/const/colors.dart';
import 'package:medical_store_mobile_app/const/style.dart';
import 'package:medical_store_mobile_app/custom/bluebutton.dart';
import 'package:medical_store_mobile_app/screens/cart/checkout.dart';

class ShoppingCartPage extends StatefulWidget {
  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  List<Map<String, dynamic>> itemslist = [
    {"name": "assets/maskgroup.png", "price": 10.0, "quantity": 1},
    {"name": "assets/maskgroup.png", "price": 20.0, "quantity": 1},
    
  ];

  double getSubtotal(int index) {
    return itemslist[index]["price"] * itemslist[index]["quantity"];
  }

  double getTotalPrice() {
    double total = 0;
    itemslist.forEach((item) {
      total += item["price"] * item["quantity"];
    });
    return total;
  }

  void incrementQuantity(int index) {
    setState(() {
      itemslist[index]["quantity"]++;
    });
  }

  void decrementQuantity(int index) {
    if (itemslist[index]["quantity"] > 1) {
      setState(() {
        itemslist[index]["quantity"]--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var mywidth = MediaQuery.of(context).size.width;
    return Scaffold(
      
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30, bottom: 10),
            child: Container(width: mywidth,child: Text(
            'Your Cart',
            style: textstylew700.copyWith(fontSize: 20),
                    ),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Items in your cart',
                  style: greytext,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.add,
                    color: blueapp,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 10),
                    child: Text(
                      'Add more',
                      style: bluetext,
                    ),
                  ),
                ],
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: itemslist.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 110,
                      width: mywidth,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Image.asset(itemslist[index]['name']),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            width: 130,
                                            height: 20,
                                            child: Text(
                                              'sugar free gold',
                                              style: textstylew700.copyWith(
                                                  fontSize: 15),
                                            ),
                                          ),
                                          Container(
                                            width: 130,
                                            height: 20,
                                            child: Text(
                                              'bottle of 500 pellets',
                                              style: greytext,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 130,
                                        height: 30,
                                        child: Text(
                                          'Rs:${itemslist[index]["price"]}',
                                          style: textstylew700.copyWith(
                                              fontSize: 19),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 100,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                        icon: Image.asset(
                                            'assets/Group 1159.png'),
                                        onPressed: () {
                                          setState(() {
                                            itemslist.removeAt(index);
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      icon:
                                         Stack(children: [Image.asset('assets/Ellipse 25.png'),
                                          Positioned(
                                            top: 3.5,left: 4,
                                            child: Icon(Icons.remove,color: blueapp,))
                                          ]),
                                      onPressed: () {
                                        decrementQuantity(index);
                                      },
                                    ),
                                    Container(
                                      child: Text(itemslist[index]["quantity"]
                                          .toString()),
                                    ),
                                    IconButton(
                                      icon:
                                          Stack(children: [Image.asset('assets/Ellipse 24.png'),
                                          Positioned(
                                            top: 3.5,left: 4,
                                            child: Icon(Icons.add,color: whitecolor,))
                                          ]),
                                      onPressed: () {
                                        incrementQuantity(index);
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Divider(
                        height: 18,
                        thickness: 2,
                        color: greycont,
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(width: mywidth,
              child: Text('Pyament Summary',
                      style: textstylew700.copyWith(fontSize: 17)
                    ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(width: mywidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Order Total',
                          style: greytext
                        ),
                        Text('${getTotalPrice().toStringAsFixed(2)}',
                      
                        ),
                ],
              ),
            ),
          ),

           Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(width: mywidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Items Discount',
                          style: greytext
                        ),
                        Text('0.00',
                      
                        ),
                ],
              ),
            ),
          ),

           Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(width: mywidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Coupon Discount',
                          style: greytext
                        ),
                        Text('0.00',
                      
                        ),
                ],
              ),
            ),
          ),

           Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(width: mywidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Shipping',
                          style: greytext
                        ),
                        Text('Free',
                      
                        ),
                ],
              ),
            ),
          ),

          

           Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Divider(
                        height: 18,
                        thickness: 2,
                        color: greycont,
                      ),
                    ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Rs:${getTotalPrice().toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CheckOutScreen(price:'Rs:${getTotalPrice().toStringAsFixed(2)}' ),));
            },
            child: blueButton(buttonsays: 'Place Order')),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}
