import 'package:ecommerce/core/constant/app_routes_name.dart';
import 'package:ecommerce/core/midlleware/my_midddleware.dart';

import 'package:ecommerce/view/screen/auth_screens/forget_password/email_verification_screen.dart';
import 'package:ecommerce/view/screen/auth_screens/forget_password/forget_password_screen.dart';
import 'package:ecommerce/view/screen/auth_screens/forget_password/reset_password_screen.dart';
import 'package:ecommerce/view/screen/auth_screens/login_screen.dart';
import 'package:ecommerce/view/screen/auth_screens/signup_screen.dart';
import 'package:ecommerce/view/screen/auth_screens/success_screen.dart';
import 'package:ecommerce/view/screen/auth_screens/verify_sign_up_email_screen.dart';
import 'package:ecommerce/view/screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



List<GetPage<dynamic>>? getPages = [
  GetPage(name: AppRoutesName.onBoard, page: ()=> OnBoardingScreen(),middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoutesName.signin, page: ()=> LoginScreen()),
  GetPage(name: AppRoutesName.signup, page: ()=> SignUpScreen()),
  GetPage(name: AppRoutesName.forgetpassword, page: ()=> ForgetPasswordScreen()),
  GetPage(name: AppRoutesName.emailverify, page: ()=> EmailVerifcationScreen()),
  GetPage(name: AppRoutesName.resetpassord, page: ()=> ResetPasswordScreen()),
  GetPage(name: AppRoutesName.emailVerifySignUp, page: ()=> EmailVerifcationSignUpScreen()),
  GetPage(name: AppRoutesName.success, page: ()=> const SuccessScreen()),
];