import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/core/constant/onboarding_image_link.dart';
import 'package:ecommerce/core/functions/functions.dart';
import 'package:ecommerce/view/widget/auth_widget/auth_logo.dart';
import 'package:ecommerce/view/widget/auth_widget/auth_spacer.dart';
import 'package:ecommerce/view/widget/auth_widget/custom_auth_Button.dart';
import 'package:ecommerce/view/widget/auth_widget/custom_text_field.dart';
import 'package:ecommerce/view/widget/auth_widget/ragister_or_login.dart';
import 'package:ecommerce/view/widget/component_widgets/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/signin_controller.dart';
import '../../widget/component_widgets/custom_text_button.dart';

class LoginScreen extends StatelessWidget {

   LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   Get.put(SignInControllerImp());

    const double textSize = 32;
    return  Scaffold(
      body: WillPopScope(
        onWillPop: ()=> goOutApp(),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,
            vertical: 30),
            child: GetBuilder<SignInControllerImp>(
              builder:(controller)=> SingleChildScrollView(
                physics:const BouncingScrollPhysics(),

                child: Form(
                  key: controller.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AuthLogo(),
                     const SizedBox(
                       height: 60,
                     ),
                      Row(
                        children: [
                          Text(
                            'Welcome to',
                            style:Theme.of(context).textTheme.displayLarge!.copyWith(
                                fontSize: textSize
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            ' e',
                            style:Theme.of(context).textTheme.displayLarge!.copyWith(
                              color: appColor,
                              fontSize: textSize
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Shop',
                            style:Theme.of(context).textTheme.displayLarge!.copyWith(
                              fontSize: textSize
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Please enter your address below to start\nusing app',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 15
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      CustomTextField(

                        type: TextInputType.emailAddress,
                        validator: (val){
                          return myValidator(10, 30, TextInputType.emailAddress, val);
                        },
                        controller : controller.emailController,label: 'Email',prefix: Icons.email,),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                          type: TextInputType.visiblePassword,
                          onIconTapped: (){
                            controller.changeSigninPassword();
                          },
                          obscure: controller.obscureText,
                          suffix:controller.obscureText == true? Icons.visibility:Icons.visibility_off_outlined,
                          validator: (val){
                            return myValidator(9, 30, TextInputType.visiblePassword, val);

                          },
                          controller: controller.passwordController,
                          label: 'password', prefix: Icons.lock),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          const Text(''),
                          const SizedBox(
                            height: 15,
                          ),

                          tetButton(
                            onPressed: (){
                              controller.goToForgetPassword();
                            },
                            text: 'forget password?',
                            textColor: appColor
                          )

                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      customButton(onPressed: (){
                        controller.login();
                      }, title: 'sign in'),
                      const SizedBox(
                        height: 10,
                      ),

                      RegisterOrLogin(textOne:  'Not a member?  ',
                          buttonText: 'Join now',
                          onPressed: (){
                         controller.goToSignUp();
                          }),
                      const SizedBox(height: 70,),

                      const AuthSpacer(text: 'Or sign in with'),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CusTomAuthButton(
                              onPressed: (){},
                              buttonColor: 0xff2B4593,
                              text: 'facebook',
                              icon: Icons.facebook,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),

                          Expanded(
                            child: CusTomAuthButton(
                              onPressed: (){
                                controller.login();
                              },

                              iconColor: Colors.black87,
                              textColor: Colors.black87,
                              buttonColor: 0xffF4F0EC,
                              text: 'google',
                              icon: Icons.facebook,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
