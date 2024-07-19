import 'package:flutter/material.dart';
import 'package:medical_store_mobile_app/const/colors.dart';
import 'package:medical_store_mobile_app/const/style.dart';
import 'package:medical_store_mobile_app/custom/profilebox.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    //var myheight = MediaQuery.of(context).size.height;
    var mywidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 20),
            child: Container(
              height: 40,
              width: mywidth,
              child: Text('My Profile',style: textstylew700.copyWith(fontSize: 16),),
            ),
          ),
          Container(
            width: mywidth/1.03,
            height: 100,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 68,
                    width: 68,
                    child: CircleAvatar(
                    backgroundColor: profilecolor,
                    radius: 34,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/photo 1.png'),
                        radius: 32,
                      ),
                    ),
                  ),
                ),
                 Container(
                  height: 90,
                  width: 260,
                  child: Column(
                    children: [
                      
                      Container(
                        height: 40,
                        width: 260,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, top: 15),
                          child: Text('Hi, Rahul kanjariya',style: TextStyle(color: profiletext,fontSize: 20),),
                        ),),
                        SizedBox(height: 2,),
                      Container(
                        height: 40,
                        width: 260,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text('Welcome to Nikanth Medical Store',style: TextStyle(color: profiletext,fontSize: 14)),
                        )
                        ),
                    ],
                  ),
                 ),
              ],

            ),
          ),
          SizedBox(height: 10,),
          profilebox(
            text: 'Edit Profile',
            image: 'assets/group69.svg'
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60,right: 20),
            child: Divider(height: 2,),
          ),
            profilebox(
            text: 'My orders',
            image: 'assets/Group 1546.svg'
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60,right: 20),
            child: Divider(height: 2,),
          ),
       profilebox(
            text: 'Billing',
            image: 'assets/Group 70.svg'
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60,right: 20),
            child: Divider(height: 2,),
          ),
            profilebox(
            text: 'Faq',
            image: 'assets/group73.svg'
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60,right: 20),
            child: Divider(height: 2,),
          ),

        ],
      ),
    );
  }
}