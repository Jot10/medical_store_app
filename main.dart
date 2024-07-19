import 'package:flutter/material.dart';
import 'package:medical_store_mobile_app/Routes/routes.dart';
//import 'package:medical_store_mobile_app/screens/cart/checkout.dart';
//import 'package:medical_store_mobile_app/custom/categorypage.dart';
//import 'package:medical_store_mobile_app/screens/splashscreen.dart';
//import 'package:medical_store_mobile_app/screens/cart/cart.dart';
// import 'package:medical_store_mobile_app/screens/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      //home: SplashScreen(),
    );
  }
}
