import 'package:ecommerce/core/class/crud.dart';
import 'package:ecommerce/core/class/status_request.dart';
import 'package:ecommerce/core/functions/functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/app_routes_name.dart';
import '../../core/constant/endpoints.dart';
import '../../data/model/auth_models/signup_model.dart';

// abstract class SignUpController extends GetxController{
//   signup({
//     required String email,
//     required String password,
//     required String rePassword,
//     required String firstName,
//     required String lastName,
//     required String phone,
//     required String age,
//     required String gender,
// });
//   goToSignIn();
//   goToVerifySignUpEmail();
//   changeSignUpPassword1();
// }

class SignupControllerImp extends GetxController{

  late TextEditingController emailController ;
  late TextEditingController passwordController;
  late TextEditingController rePasswordController;
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController phoneController;
  late TextEditingController ageController;
  late TextEditingController genderController;

  bool obscureText1 = false;
  bool obscureText2 = false;
  var formKey = GlobalKey<FormState>();




  changeSignUpPassword1() {
    obscureText1 = !obscureText1;
  update();
  }


  changeSignUpPassword2() {
    obscureText2 = !obscureText2;
  update();
  }

  signup({
    required String email,
    required String password,
    required String rePassword,
    required String firstName,
    required String lastName,
    required String phone,
    required String age,
    required String gender,
})async {
    // if(formKey.currentState!.validate()){
    //   await Crud.postData(
    //       EndPoints.signup,
    //     {
    //       'firstName':firstName,
    //       'lastName':lastName,
    //       'email':email,
    //       'password':password,
    //       'repassword':rePassword,
    //       'age':age,
    //       'gender':gender,
    //       'phone':phone
    //     },
    //   ).then((value) {
    //
    //     print(email);
    //     print(phone);
    //     print(password);
    //
    //   if(value is StatusRequest)
    //   {
    //     print('==================================');
    //
    //   print('Status Request Error $value');
    //   print('==================================');
    //
    // }else{
    //   //signUpDataModel = SignUpDataModel.fromJson(data: value);
    //   print('==================================');
    //   print('adta ${value['message']}');
    //   print('==================================');
    //
    // }
    //
    //
    //   }).catchError((error){
    //     print('===================================');
    //     print('error = $error');
    //     print('===================================');
    //   });
    //
    //   //goToVerifySignUpEmail();
    // }

  }


  goToSignIn() {
    Get.offAllNamed(AppRoutesName.signin);
  }


  goToVerifySignUpEmail() {
    Get.offAllNamed(AppRoutesName.emailVerifySignUp);
  }


  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    phoneController = TextEditingController();
    rePasswordController = TextEditingController();
    ageController = TextEditingController();
    genderController = TextEditingController();
    super.onInit();
  }


  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    phoneController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    rePasswordController.dispose();
    ageController.dispose();
    genderController.dispose();
    super.dispose();
  }
}