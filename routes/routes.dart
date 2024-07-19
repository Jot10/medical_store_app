import 'package:go_router/go_router.dart';
import 'package:medical_store_mobile_app/screens/cart/checkout.dart';
import 'package:medical_store_mobile_app/screens/cart/thankyou.dart';
import 'package:medical_store_mobile_app/screens/home/anothercartr.dart';
import 'package:medical_store_mobile_app/screens/home/description.dart';
import 'package:medical_store_mobile_app/screens/home/homecart.dart';
import 'package:medical_store_mobile_app/screens/home/homenoti.dart';
import 'package:medical_store_mobile_app/screens/home/slivercategory.dart';
import 'package:medical_store_mobile_app/screens/login/login.dart';
import 'package:medical_store_mobile_app/screens/navigation/navscreen.dart';
import 'package:medical_store_mobile_app/screens/onboarding/onboarding.dart';
import 'package:medical_store_mobile_app/screens/splashscreen.dart';
import 'package:medical_store_mobile_app/screens/verification/sucess.dart';
import 'package:medical_store_mobile_app/screens/verification/verification.dart';
 

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const SplashScreen(),
  ),
  GoRoute(
      path: '/onboarding',
      builder: (context, state) => const onBoarding(),
      routes: [
        GoRoute(
            path: 'login',
            builder: (context, state) => const login(),
            routes: [
              GoRoute(
                  path: 'verify/:phoneno',
                  name: 'phoneno',
                  builder: (context, state) =>  verify(phoneno: state.pathParameters['phoneno']),
                  routes: [
                   
                  ]),
            ]),
      ]),
       GoRoute(
                      path: '/success',
                      builder: (context, state) => const verificationSuccess(),
                    ),
  GoRoute(path: '/navscreen',
  builder:(context, state) => const bottomnavigation(),
  routes: [
   GoRoute(path: 'chechkout/:price2',
          name: 'price2',
          builder: (context, state) => CheckOutScreen(price: state.pathParameters['price2']),
          ),   
    GoRoute(path: 'notification',
    builder: (context, state) => const homenotification(),),
    GoRoute(path: 'cart',
    builder: (context, state) => homecart(),
     routes: [
          GoRoute(path: 'chechkout/:price',
          name: 'price',
          builder: (context, state) => CheckOutScreen(price: state.pathParameters['price']),
          )
        ]),
    GoRoute(path: 'category',
    builder: (context, state) => const sliverCategory(),
    routes: [
      GoRoute(path: 'description',
      builder: (context, state) =>const  DescriptionScreen(),
      routes: [
        GoRoute(path: 'gotocart',
        builder: (context, state) =>  anothercart(),
        routes: [
          GoRoute(path: 'chechkout',
          builder: (context, state) => CheckOutScreen(price: '',),
          routes: [
            GoRoute(path: 'thankyou',
            builder: (context, state) => thankyou(),)
          ]
          )
        ])
      ])
    ])
  ]
  ), 
  

]);
