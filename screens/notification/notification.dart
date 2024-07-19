import 'package:flutter/material.dart';
import 'package:medical_store_mobile_app/const/style.dart';
//import 'package:medical_store_mobile_app/screens/home/homepage.dart';

class notificationPage extends StatefulWidget {
  const notificationPage({super.key});

  @override
  State<notificationPage> createState() => _notificationPageState();
}

class _notificationPageState extends State<notificationPage> {
  List notifimage=['assets/group1755.png','assets/group1756.png','assets/group1757.png','assets/group1757.png'];
  List notification=['We Know that-for children AND adluts-learning is the most effective when it is',
  'The future of professional learning is immersive, communal experience for',
  'With this in mind, Global Online academy created the Blended Learning Design',
  'Technology should serve, not drive, pedagopy. Schools often discuss'];
  List time=['Aug 12,2020 at 12:08 PM','Aug 12,2020 at 12:08 PM','Aug 12,2020 at 12:08 PM','Aug 12,2020 at 12:08 PM',];
  @override
  Widget build(BuildContext context) {
    var mywidth=MediaQuery.of(context).size.width;
    return Scaffold(
      
      // appBar: AppBar(
      //   leading: 
      //   IconButton(onPressed: () {
      //   // Navigator.push(context,MaterialPageRoute(builder: (context) => homepage(),));
      // }, 
      // icon: Icon(Icons.arrow_back_ios, color: Colors.white,)),
      // title: Text('Notification',style: textstylew700.copyWith(fontSize: 20),),
      // actions: [Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Text('Clear all',style: bluetext,),
      // )],),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 20),
              child: Text('Notifications',style: textstylew700.copyWith(fontSize: 20),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40,right: 20),
              child: Text('Clear all',style: bluetext,),
            )
          ],),
          //Divider(height: 8,),
          Container(height: 600,
            child: ListView.builder(
              itemCount: time.length,
              itemBuilder: (context, index) {
              return Column(
                children: [
                  Divider(height: 2,),
                  Container(
                    height: 110,width: mywidth,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(notifimage[index]),
                        ),
                        Column(
                          children: [
                            SizedBox(height: 10,),
                            Container(
                              //constraints: BoxConstraints(maxHeight: double.infinity),
                            width: 330,height: 55,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(notification[index], 
                              style: textstylew500,
                              textAlign: TextAlign.start,),
                            ),),

                             Container(
                              //constraints: BoxConstraints(maxHeight: double.infinity),
                            width: 330,height: 40,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Text(time[index], 
                              style: greytext,
                              textAlign: TextAlign.start,),
                            ),),

                          ],
                        )
                      ],
                    ),
                  ),

                   //Divider(height: 2,)
                ],
              );
            },),
          )
        ],
      ),
    );
  }
}