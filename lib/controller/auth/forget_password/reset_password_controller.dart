import 'package:ecommerce/core/constant/app_routes_name.dart';
import 'package:ecommerce/view/screen/auth_screens/forget_password/email_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController{
  goToSuccess();
  resetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController{

  late TextEditingController passwordController;
  late TextEditingController rePasswordController;
  var formKey = GlobalKey<FormState>();

  @override
  resetPassword() {
    if(formKey.currentState!.validate()){
      goToSuccess();
      print('Reset Sucessfully');
    }

  }

  @override
  goToSuccess() {
    Get.offAllNamed(AppRoutesName.success);
  }

  @override
  void onInit() {
    passwordController =TextEditingController();
    rePasswordController =TextEditingController();

    super.onInit();
  }
  @override
  void dispose() {
    passwordController.dispose();
    rePasswordController.dispose();
    super.dispose();
  }

}