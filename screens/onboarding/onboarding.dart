import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medical_store_mobile_app/Routes/routes.dart';
import 'package:medical_store_mobile_app/const/colors.dart';
import 'package:medical_store_mobile_app/const/style.dart';
// import 'package:medical_store_mobile_app/screens/login/login.dart';

class onBoarding extends StatefulWidget {
  const onBoarding({super.key});

  @override
  State<onBoarding> createState() => _onBoardingState();
}

class _onBoardingState extends State<onBoarding> {
    PageController pages=PageController(initialPage: 0);
    int currentIndex =0;
    List slides=['assets/Screenshot (3).png','assets/Screenshot (3).png','assets/Screenshot (3).png','assets/Screenshot (3).png'];
  @override
  Widget build(BuildContext context) {
    var mywidth= MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Stack(
            children: [
                PageView.builder(
                 controller: pages,
                scrollDirection: Axis.horizontal,
                    onPageChanged: (value){
                      setState(() {
                        currentIndex = value;
                      });
                    },
                    itemCount: slides.length,
                itemBuilder: (context, index) {
                  return Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.asset(slides[index],scale: 3,),
                      ),
                      SizedBox(height: 10,),
                      Container(width: mywidth/1.5,
                        child: Center(child: Text('View and buy', style: textstylew700.copyWith(fontSize: 30,),)),),
                        Container(width: mywidth/1.5,
                        child: Center(child: Text('Medicine online', style: textstylew700.copyWith(fontSize: 30,),)),),
                         SizedBox(height: 20,),
                        Container(width: mywidth/1.5,
                        child: Center(child: Text('Etiam mollis metus non purus', style: greytext,)),),
                        Container(width: mywidth/1.5,
                        child: Center(child: Text('faucibus sollicitudin, Pellentesque', style: greytext)),),
                        Container(width: mywidth/1.5,
                        child: Center(child: Text('sagittis mi. Integer.', style: greytext)),)
                    ],
                  );
                },
                ),
                Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 40,
              child: Container(
                //color: Colors.black12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      slides.length,
                          (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: CircleAvatar(
                          radius: 3,
                          
                          backgroundColor: currentIndex== index
                              ? blueapp
                              : Colors.grey,
                        )
                        )
                        )
                        )
                        )
                        ),
                        Positioned(
                          left: 20,bottom: 0,right: 0, height: 40,
                          child: Container(
                            child: InkWell(
                              onTap: () {
                                router.go('/onboarding/login');
                               // Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => login(),));
                              },
                              child: Text('Skip',style: greytext.copyWith(fontSize: 15),)),)),
                                                    Positioned(
                          bottom: 0,right: 20, height: 40,
                          child: Container(
                            child: InkWell(
                              onTap: () {
                              if (currentIndex < slides.length - 1) {
                                pages.nextPage(duration: Duration(milliseconds: 100), curve: Curves.ease);
                      setState(() {
                        currentIndex++;
                      });

                    } else {
                      router.go('/onboarding/login');
                      //Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => login(),));
                    }
                  },
                              child: Text('Next',style: textstylew700.copyWith(fontSize: 15, color: blueapp),)),))
              ],
          ),
            
            
            )
        ],
      ),
    );
  }
}