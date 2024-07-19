import 'package:flutter/material.dart';
//import 'package:medical_store_mobile_app/const/colors.dart';
import 'package:medical_store_mobile_app/const/style.dart';
import 'package:medical_store_mobile_app/custom/customproduct.dart';
import 'package:medical_store_mobile_app/custom/productlist.dart';

class categoryPage extends StatefulWidget {
  const categoryPage({super.key});

  @override
  State<categoryPage> createState() => _categoryPageState();
}

class _categoryPageState extends State<categoryPage> {
  
  List productimagelist=['assets/product_image.png', 'assets/image 21.png','assets/product_image.png', 'assets/image 21.png','assets/product_image.png', 'assets/image 21.png'];
  List productdesclist=['Accucheck Active','Omron HEM-8712','Accucheck Active','Omron HEM-8712','Accucheck Active','Omron HEM-8712'];
  List productdesc2list=['Test Strip', 'BP Monitor','Test Strip', 'BP Monitor','Test Strip', 'BP Monitor',];
  List pricelist=['Rs.112', 'Rs.150','Rs.112', 'Rs.150','Rs.112', 'Rs.150',];
  List ratinglist=['assets/rating_label (1).png','assets/rating_label (1).png','assets/rating_label (1).png','assets/rating_label (1).png','assets/rating_label (1).png','assets/rating_label (1).png'];
  List producttagslist=['assets/Vector 3.png','assets/Vector 4.png','assets/Vector 3.png','assets/Vector 4.png','assets/Vector 3.png','assets/Vector 4.png',];
  List productimages=['assets/maskgroup.png','assets/Mask Group.png','assets/Mask Group (1).png'];
  List productdesc=['Sugar Sustitute', 'Juices & Vinegars', 'Vitamins and Medicines'];
  List tags=['SALE', '15% OFF','SALE', '15% OFF','SALE', '15% OFF'];
  @override
  Widget build(BuildContext context) {
    var mywidth= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        title: Text('Diabetes Care', style: textstylew700.copyWith(fontSize: 20),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(constraints: BoxConstraints(maxHeight: double.infinity),
              width: mywidth,child: Text('Categories', style: textstylew700.copyWith(fontSize: 17),),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 30),
              child:
              SizedBox(width: mywidth,
                  height: 170,
                                   // color: Colors.green,
                    child: 
                    ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: productdesc.length,
                      itemBuilder:(context, index) {
                         return Row(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(left: 8,),
                               child: productList(typeproductimage: productimages[index], typeproductdesc: productdesc[index])
                             ),
                           ],
                         );
                      },
                    ),
                  ),
            ),

             Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(constraints: BoxConstraints(maxHeight: double.infinity),
              width: mywidth,child: Text('All products', style: textstylew700.copyWith(fontSize: 17),),),
            ),

            Container(height: 452,width: mywidth,
            //color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,childAspectRatio: 3/4,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20), 
                itemCount: productimagelist.length,
                
                
                itemBuilder: (context, index) {
                  return
                  customProduct(productimage: productimagelist[index], productdescription: productdesclist[index], 
                  productdesc2: productdesc2list[index], 
                  price: pricelist[index], 
                  rating: ratinglist[index], 
                  producttag: producttagslist[index],
                  tag: tags[index],)
                  ;
                },),
              ),
            )

            // Padding(
            //   padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //      customProduct(productimage: 'assets/product_image.png', 
            //      productdescription:'Accucheck Active', 
            //      productdesc2: 'Test Strip',
            //      price: 'Rs.112',
            //      rating:'assets/rating_label (1).png',
            //      producttag: 'assets/sale_tag.png',) ,
              
            //       customProduct(productimage: 'assets/image 21.png', 
            //      productdescription:'Omron HEM-8712', 
            //      productdesc2: 'BP Monitor',
            //      price: 'Rs.150',
            //      rating:'assets/rating_label (1).png',
            //      producttag: 'assets/Vector 4.png',) 
            //     ],
            //   ),
            // ),

            //  Padding(
            //   padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //      customProduct(productimage: 'assets/product_image.png', 
            //      productdescription:'Accucheck Active', 
            //      productdesc2: 'Test Strip',
            //      price: 'Rs.112',
            //      rating:'assets/rating_label (1).png',
            //      producttag: 'assets/sale_tag.png',) ,
              
            //       customProduct(productimage: 'assets/image 21.png', 
            //      productdescription:'Omron HEM-8712', 
            //      productdesc2: 'BP Monitor',
            //      price: 'Rs.150',
            //      rating:'assets/rating_label (1).png',
            //      producttag: 'assets/Vector 4.png',) 
            //     ],
            //   ),
            // ),
            //  Padding(
            //   padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //      customProduct(productimage: 'assets/product_image.png', 
            //      productdescription:'Accucheck Active', 
            //      productdesc2: 'Test Strip',
            //      price: 'Rs.112',
            //      rating:'assets/rating_label (1).png',
            //      producttag: 'assets/sale_tag.png',) ,
              
            //       customProduct(productimage: 'assets/image 21.png', 
            //      productdescription:'Omron HEM-8712', 
            //      productdesc2: 'BP Monitor',
            //      price: 'Rs.150',
            //      rating:'assets/rating_label (1).png',
            //      producttag: 'assets/Vector 4.png',) 
            //     ],
            //   ),
            // )
            
          ],
        ),
      ),
    );
  }
}