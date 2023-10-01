
import 'package:ecommerce/controller/auth/forget_password/reset_password_controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/functions/functions.dart';
import 'package:ecommerce/view/widget/auth_widget/auth_screen_body.dart';
import 'package:ecommerce/view/widget/auth_widget/auth_screen_title.dart';
import 'package:ecommerce/view/widget/auth_widget/custom_text_field.dart';
import 'package:ecommerce/view/widget/component_widgets/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller = Get.put(ResetPasswordControllerImp());
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
              child: Form(
                key: controller.formKey,
                child: Column(
                  children: [
                    const AuthScreenTitle(title:'Reset password'),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        height: 250,
                        width: 250,

                       // margin: const EdgeInsets.symmetric(vertical: 25),
                       // padding: const EdgeInsets.all( 30),
                        child: Image.asset(
                          'assets/images/resetpassword.jpg',fit: BoxFit.cover,),
                      ),
                    ),
                    const AuthScreenBody(fontSize:17,body: 'Your new password must be different\nFrom previously used password'),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Column(
                        children: [
                           CustomTextField(
                             type: TextInputType.visiblePassword,
                               validator: (val){
                                 return myValidator(9, 30, TextInputType.visiblePassword, val);

                               },

                               label: 'New Password',
                               prefix: Icons.lock_open_rounded,
                               controller: controller.passwordController
                           ),
                          const SizedBox(
                            height: 10,
                          ),
                       CustomTextField(
                           validator: (val){
                             return myValidator(9, 30, TextInputType.visiblePassword, val);

                           },

                           type: TextInputType.visiblePassword,
                           label: 'Confirmed Password',
                           prefix: Icons.lock_open_rounded,
                           controller: controller.rePasswordController
                       ),
                        ],
                      ),
                    ),
                    //const Spacer(),
                    customButton(onPressed: (){
                      controller.resetPassword();
                      //controller.goToSuccess();
                    }, title: 'save'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
