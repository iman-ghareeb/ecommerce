import 'package:ecommerce/controller/auth/forget_password/forget_password_controller.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/functions/functions.dart';
import 'package:ecommerce/view/widget/auth_widget/auth_screen_body.dart';
import 'package:ecommerce/view/widget/auth_widget/auth_screen_title.dart';
import 'package:ecommerce/view/widget/auth_widget/custom_text_field.dart';
import 'package:ecommerce/view/widget/component_widgets/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller = Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20
          ),
          child: SingleChildScrollView(
            physics:const BouncingScrollPhysics(),

            child: Form(
              key:controller.formKey ,
              child: Column(

                children: [
                  const AuthScreenTitle(title:'Forget password'),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Container(
                      height: 250,

                      decoration: BoxDecoration(
                          color: Colors.deepOrange.withOpacity(0.3),
                          shape: BoxShape.circle
                      ),
                      margin: const EdgeInsets.symmetric(vertical: 25),
                      padding: const EdgeInsets.all( 30),
                      child: Image.asset(
                        'assets/images/forgetpassword.png',),
                    ),
                  ),
                  const AuthScreenBody(fontSize:17,body: 'Please enter your email address To\nreceive a verifcation Code'),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25),
                    child: CustomTextField(
                        validator: (val){
                          return myValidator(10, 30, TextInputType.emailAddress, val);

                        },

                        type: TextInputType.emailAddress,
                        label: 'Email',
                        prefix: Icons.email_outlined,
                        controller: controller.emailController
                    ),
                  ),
                  //const Spacer(),
                  customButton(onPressed: (){
                    //controller.goToVerificationCode();
                    controller.forgetPassword();
                  }, title: 'Send'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
