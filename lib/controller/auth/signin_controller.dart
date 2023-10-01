import 'package:ecommerce/core/constant/app_routes_name.dart';
import 'package:ecommerce/core/functions/functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

// abstract class SignInController extends GetxController{
//   login();
//   goToSignUp();
//   goToForgetPassword();
//   changeSigninPassword();
//
// }




class SignInControllerImp extends GetxController{

  late TextEditingController emailController ;
  late TextEditingController passwordController;
  bool obscureText =false;
  var formKey = GlobalKey<FormState>();

  login() {
    if(formKey.currentState!.validate()){
      print('Login Sucessfully');
    }
  }

  changeSigninPassword() {
    obscureText = !obscureText;
     update();
  }


  goToSignUp() {
    Get.offAllNamed(AppRoutesName.signup);
  }


  goToForgetPassword() {
    Get.toNamed(AppRoutesName.forgetpassword);
  }

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}