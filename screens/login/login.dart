import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:medical_store_mobile_app/const/style.dart';
import 'package:medical_store_mobile_app/custom/bluebutton.dart';
// import 'package:medical_store_mobile_app/screens/verification/verification.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
   GlobalKey<FormState> _formKey = GlobalKey();
   final TextEditingController mycontroller = TextEditingController();

   
  @override
  Widget build(BuildContext context) {
    var mywidth= MediaQuery.of(context).size.width;
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: mywidth,
              child: Image.asset('assets/logo_info.png'),
            ),
            SizedBox(height: 70,),
            Container(
              width: mywidth/1.4,
              child: Text('Please enter your Mobile Number to Login/Sign Up', style: greytext.copyWith(fontSize: 15),)),
            Padding(
              padding: const EdgeInsets.only(left:50,right: 40,top: 30),
              child: IntlPhoneField(
                showCountryFlag: false,
                controller: mycontroller,
                   // focusNode: focusNode,
                    decoration: InputDecoration(
                      
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide()
                      ),
                    ),
                    languageCode: "en",
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                    onCountryChanged: (country) {
                      print('Country changed to: ' + country.name);
                    },
                  ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
            //   child: Container(width: mywidth,height: 50,
            //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: blueapp),
            //     child: MaterialButton(
            //             child: Text('Continue'),
            //            // color: blueapp,
            //            textColor: Colors.white,
            //             onPressed: () {
            //              _formKey.currentState?.validate();
            //              Navigator.push(context, MaterialPageRoute(builder: (context) =>verify() ,));
            //             },
            //           ),
            //   ),
            // ),

            InkWell(
              onTap: () {
                var param1=mycontroller.text;
                context.goNamed('phoneno',pathParameters: {"phoneno":param1});
               // router.go('/onboarding/login/verify');
                //Navigator.push(context,MaterialPageRoute(builder: (context) => verify(phoneno: mycontroller.text),));
              },
              child: blueButton(buttonsays: 'CONTINUE'))
        
          ],
        ),
      ),
    );
  }
}