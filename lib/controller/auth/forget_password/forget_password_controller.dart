import 'package:ecommerce/core/constant/app_routes_name.dart';
import 'package:ecommerce/view/screen/auth_screens/forget_password/email_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController{
  goToVerificationCode();
  forgetPassword();
}

class ForgetPasswordControllerImp extends ForgetPasswordController{

  late TextEditingController emailController;
  var formKey = GlobalKey<FormState>();
  @override
  forgetPassword() {
    if(formKey.currentState!.validate()){
      print('Login Sucessfully');
      goToVerificationCode();
    }

  }

  @override
  goToVerificationCode() {
    Get.offAllNamed(AppRoutesName.emailverify);
  }

  @override
  void onInit() {
    emailController =TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

}