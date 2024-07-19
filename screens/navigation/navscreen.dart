import 'package:flutter/material.dart';
import 'package:medical_store_mobile_app/const/colors.dart';
// import 'package:medical_store_mobile_app/screens/cart/cart.dart';
import 'package:medical_store_mobile_app/screens/cart/slivercart.dart';
import 'package:medical_store_mobile_app/screens/home/homepage.dart';
import 'package:medical_store_mobile_app/screens/new/new.dart';
import 'package:medical_store_mobile_app/screens/notification/notification.dart';
import 'package:medical_store_mobile_app/screens/profile/profile.dart';
class bottomnavigation extends StatefulWidget {
  const bottomnavigation({super.key});

  @override
  State<bottomnavigation> createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<bottomnavigation> {
  
  int selectedindex=0;
    void navigateBottomNavBar(int index){
      setState(() {
        selectedindex=index;
      });
    }
  @override
  Widget build(BuildContext context) {
    
    final List <Widget> screens=[
      homepage(),
      notificationPage(),
      newPage(),
  slivercart(),
      ProfilePage()

    ];
    return Scaffold(
      body: screens[selectedindex],
     bottomNavigationBar: BottomNavigationBar(
     // backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedindex,
      selectedFontSize: 10,
      unselectedFontSize: 10,
      selectedItemColor: blueapp,
      unselectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(color: Colors.black),
      unselectedLabelStyle: TextStyle(color: Colors.black),
      showSelectedLabels: false,
      onTap: navigateBottomNavBar,
      items: [

        BottomNavigationBarItem(
        icon: Image.asset('assets/btn_home.png'),
        //activeIcon: Icon(Icons.home_filled),
        label: '',),

          BottomNavigationBarItem(
        icon: Image.asset('assets/btn_notification.png'),
        //activeIcon: Icon(Icons.home_filled),
        label: '',),
          BottomNavigationBarItem(
        icon: Image.asset('assets/custom_order_button.png',scale: 1,),
        //activeIcon: Icon(Icons.home_filled),
        label: '',),

          BottomNavigationBarItem(
        icon: Image.asset('assets/btn_shopping_cart.png'),
        //activeIcon: Icon(Icons.home_filled),
        label: '',),

          BottomNavigationBarItem(
        icon: Image.asset('assets/btn_user_icon.png'),
        //activeIcon: Icon(Icons.home_filled),
        label: '',),

      ],),
    );
  }
}