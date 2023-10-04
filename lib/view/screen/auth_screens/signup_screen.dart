import 'package:ecommerce/controller/auth/signup_controller.dart';
import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/constant/endpoints.dart';
import 'package:ecommerce/core/functions/functions.dart';
import 'package:ecommerce/data/datasource/remote/dio_helper.dart';
import 'package:ecommerce/view/widget/auth_widget/auth_logo.dart';
import 'package:ecommerce/view/widget/auth_widget/auth_screen_body.dart';
import 'package:ecommerce/view/widget/auth_widget/auth_screen_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/auth_widget/auth_spacer.dart';
import '../../widget/auth_widget/custom_auth_Button.dart';
import '../../widget/auth_widget/custom_text_field.dart';
import '../../widget/auth_widget/ragister_or_login.dart';
import '../../widget/component_widgets/custombutton.dart';

class SignUpScreen extends StatelessWidget {
   SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   Get.put(SignupControllerImp());

    return Scaffold(
      body: WillPopScope(
        onWillPop: ()=> goOutApp(),

        child: GetBuilder<SignupControllerImp>(
          builder:(controller)=> SingleChildScrollView(
            physics:const BouncingScrollPhysics(),

            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30
              ),
              child: Form(
                key: controller.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding:  EdgeInsets.only(top: 15.0),
                      child:  AuthLogo(),
                    ),
                    const SizedBox(height: 50,),
                   const AuthScreenTitle(title: 'Create a new account'),
                    const SizedBox(
                      height: 5,
                    ),
                   const  AuthScreenBody(body: 'Please enter your information below to\ncreate a new account for using the app. '),
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
                      height: 5,
                    ),
                    CustomTextField(
                        onIconTapped: (){
                          controller.changeSignUpPassword1();
                        },

                        suffix:controller.obscureText1 == true? Icons.visibility:Icons.visibility_off_outlined,
                        type: TextInputType.visiblePassword,
                        validator: (val){
                          return myValidator(9, 30, TextInputType.visiblePassword, val);

                        },

                        controller:controller.passwordController,
                        obscure: controller.obscureText1,

                        label: 'password', prefix: Icons.lock),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomTextField(
                        onIconTapped: (){
                          controller.changeSignUpPassword2();
                        },
                        label: 'confirmed password',
                        suffix:controller.obscureText2 == true? Icons.visibility:Icons.visibility_off_outlined,

                        validator: (val){
            return myValidator(9, 30, TextInputType.visiblePassword, val);

            },
                      prefix: Icons.visibility_off_outlined,
                        controller: controller.rePasswordController,
                        type: TextInputType.visiblePassword),

                    const SizedBox(
                      height: 5,
                    ),
                    CustomTextField(
                      validator: (val){
                        return myValidator(11, 11, TextInputType.phone, val);

                      },

                      type: TextInputType.phone,

                      controller:controller.phoneController,label: 'Phone',prefix: Icons.phone,),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomTextField(
                        type: TextInputType.name,
                        validator: (val){
                          return myValidator(6, 30, TextInputType.name, val);

                        },

                        controller:controller.firstNameController,label: 'first name', prefix: Icons.person),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomTextField(
                        type: TextInputType.name,
                        validator: (val){
                          return myValidator(6, 30, TextInputType.name, val);

                        },

                        controller:controller.lastNameController,label: 'last name', prefix: Icons.person),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomTextField(
                        type: TextInputType.number,
                        validator: (val){
                          return myValidator(2, 3, TextInputType.number, val);

                        },

                        controller:controller.ageController,label: 'age', prefix: Icons.ac_unit_outlined),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomTextField(
                        type: TextInputType.name,
                        validator: (val){
                          return myValidator(3, 20, TextInputType.name, val);

                        },

                        controller:controller.genderController,label: 'gender', prefix: Icons.ac_unit),
                    const SizedBox(
                      height: 5,
                    ),

                    customButton(
                        onPressed: (){}
                    , title: 'sign up'),
                    const SizedBox(
                      height: 10,
                    ),

                    RegisterOrLogin(textOne:  'Already have an account?  ',
                        buttonText: 'Join now',
                        onPressed: (){
                      controller.goToSignIn();
                        }),
                    const SizedBox(height: 70,),


                    const AuthSpacer(text: 'Or sign up with'),
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
                            onPressed: (){},

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
    );
  }
}
