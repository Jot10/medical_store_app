import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medical_store_mobile_app/Routes/routes.dart';
import 'package:medical_store_mobile_app/const/colors.dart';
import 'package:medical_store_mobile_app/const/style.dart';
import 'package:medical_store_mobile_app/custom/bluebutton.dart';
// import 'package:medical_store_mobile_app/screens/verification/sucess.dart';
import 'package:otp_text_field/otp_field.dart';

//import 'package:otp_text_field/style.dart';

class verify extends StatefulWidget {
  const verify({super.key,this.phoneno,});
  final dynamic phoneno;
  

  @override
  State<verify> createState() => _verifyState();
}



class _verifyState extends State<verify> {
  OtpFieldController otpController = OtpFieldController();
  final TextEditingController _textEditingController = TextEditingController();
  final FocusNode _textFieldFocusNode = FocusNode();
  final FocusNode _submitButtonFocusNode = FocusNode();
  int secondsRemaining = 10;
  bool enableResend = false;
  bool ShowContainer = false;

   void _resendCode() {
    setState((){
      secondsRemaining = 15;
      enableResend = false;
    });
  }
  late Timer timer;


@override
  void initState() {
    super.initState();
    _textEditingController.addListener(_onTextChanged);
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (secondsRemaining != 0) {
        setState(() {
          secondsRemaining--;
        });
      } else {
        setState(() {
          enableResend = true;
        });
      }
    });
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _textFieldFocusNode.dispose();
    _submitButtonFocusNode.dispose();
     timer.cancel();
    super.dispose();
  }

  void _onTextChanged() {
    if (_textEditingController.text.length == 4) {
      // Move focus to submit button
      FocusScope.of(context).requestFocus(_submitButtonFocusNode);
    }
  }

  void _handleSubmit() {
    // Perform submit action here
    print("Form submitted!");
  }

  @override
  Widget build(BuildContext context) {
      if(secondsRemaining==0){
        ShowContainer = true;
      }
     var mywidth= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: () {
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back)),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Container(
              width: mywidth,
              child: Text('Enter the verify code', style: textstylew700.copyWith(fontSize: 25),)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Container(
              width: mywidth,
              child: Text('We just send you a verification code via phone', style: greytext,)),
          ),
          
           Padding(
             padding: const EdgeInsets.only(left: 20,),
             child: Container(
                width: mywidth,
                child: Text('${widget.phoneno}', style: greytext,)
               ),
           ),
          //  Padding(
          //    padding: const EdgeInsets.all(10.0),
          //    child: OTPTextField(
              
          //     controller: otpController,
          //     length: 6,
          //     width: mywidth,
          //     textFieldAlignment: MainAxisAlignment.spaceAround,
          //     fieldWidth: 45,
              
          //     //keyboardType: TextInputType.number,
          //     fieldStyle: FieldStyle.underline,
          //     style: TextStyle(fontSize: 17),
          //     onChanged: (pin) {
          //       print("Changed: " + pin);
          //     },
          //     onCompleted: (pin) {
          //       print("Completed: " + pin);
          //     }),
          //  ),
SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 68,width: 45,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    onSaved: (pin1){},
                    decoration: InputDecoration(hintText: '0',
                    ),
                   // style: ,
                   keyboardType: TextInputType.number,
                   textAlign: TextAlign.center,
                   inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                   ],
                  ),
                ),
            
                SizedBox(
                  height: 68,width: 45,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    onSaved: (pin2){},
                    decoration: InputDecoration(hintText: '0'),
                   // style: ,
                   keyboardType: TextInputType.number,
                   textAlign: TextAlign.center,
                   inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                   ],
                  ),
                ),
            
                SizedBox(
                  height: 68,width: 45,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    onSaved: (pin3){},
                    decoration: InputDecoration(hintText: '0'),
                   // style: ,
                   keyboardType: TextInputType.number,
                   textAlign: TextAlign.center,
                   inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                   ],
                  ),
                ),
            
                SizedBox(
                  height: 68,width: 45,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    onSaved: (pin4){},
                    decoration: InputDecoration(hintText: '0'),
                   // style: ,
                   keyboardType: TextInputType.number,
                   textAlign: TextAlign.center,
                   inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                   ],
                  ),
                ),
            
                SizedBox(
                  height: 68,width: 45,
                  child: TextFormField(
                    onChanged: (value) {
                      if (value.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    onSaved: (pin5){},
                    decoration: InputDecoration(hintText: '0'),
                   // style: ,
                   keyboardType: TextInputType.number,
                   textAlign: TextAlign.center,
                   inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                   ],
                  ),
                ),
            
                SizedBox(
                  height: 68,width: 45,
                  child: TextFormField(
                    controller: _textEditingController,
                    focusNode: _textFieldFocusNode,
                    onChanged: (value) {
                      if (value.length==1){
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    onSaved: (pin6){},
                    decoration: InputDecoration(hintText: '0'),
                   // style: ,
                   keyboardType: TextInputType.number,
                   textAlign: TextAlign.center,
                   inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                   ],
                  ),
                ),
              ],
            ),
          ),

          InkWell(
            onTap: () {
              router.go('/success');
             // Navigator.push(context, MaterialPageRoute(builder: (context) => verificationSuccess(),));
            },
            child: blueButton(
              
              buttonsays: 'SUBMIT CODE')),

            SizedBox(height: 30,),
            Container(width: mywidth,
            child: Center(child: Text('The verify code will expire in $secondsRemaining', style: greytext,)),),
             SizedBox(height: 20,),
             
            ShowContainer ? 
            Container(
              width: mywidth,
            child: Center(
              child: InkWell(
                onTap: () => enableResend ? _resendCode() : null,
                child: Text('Resend Code', style: textstylew700.copyWith(color: blueapp),))),)
                : SizedBox()
        ],
      )
    );
  }
}