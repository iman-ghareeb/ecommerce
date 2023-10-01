import 'package:ecommerce/controller/auth/forget_password/email_verificaton_controller.dart';
import 'package:ecommerce/controller/auth/forget_password/forget_password_controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/view/widget/auth_widget/auth_screen_body.dart';
import 'package:ecommerce/view/widget/auth_widget/auth_screen_title.dart';
import 'package:ecommerce/view/widget/auth_widget/custom_text_field.dart';
import 'package:ecommerce/view/widget/component_widgets/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../../core/functions/functions.dart';



class EmailVerifcationScreen extends StatelessWidget {
  EmailVerifcationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EmailVerificationControllerImp controller = Get.put(EmailVerificationControllerImp());
    return Scaffold(
      appBar: AppBar(),
      body: WillPopScope(
        onWillPop: ()=> goOutApp(),

        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20
            ),
            child: SingleChildScrollView(
              physics:const BouncingScrollPhysics(),

              child: Column(

                children: [
                  const AuthScreenTitle(title:'Verify your email'),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          //color: Colors.deepOrange.withOpacity(0.3),
                         // shape: BoxShape.circle
                      ),
                      margin: const EdgeInsets.symmetric(vertical: 25),
                      padding: const EdgeInsets.all( 30),
                      child: Image.asset(
                        'assets/images/verify.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const AuthScreenBody(fontSize:17,body: 'Please enter The 4 digit code sent To\niman.mohammed22@gmail.com'),
                  const SizedBox(
                    height: 50,
                  ),

                  OtpTextField(
                    numberOfFields: 5,
                    borderColor: Colors.grey,
                    fieldWidth: 50,
                    borderRadius: BorderRadius.circular(20),
                    //disabledBorderColor: Colors.grey,
                    enabledBorderColor: appColor,
                    focusedBorderColor: Colors.blueAccent,
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,

                    ),
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode){
                      controller.goToResetPassword();
                    }, // end onSubmit
                  ),
              ]
            ),
          ),
        ),
    ),
      ));
  }
}
