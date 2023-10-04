import 'package:ecommerce/core/constant/endpoints.dart';
import 'package:ecommerce/data/datasource/remote/dio_helper.dart';
import 'package:ecommerce/data/model/test_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constant/app_routes_name.dart';
import '../core/functions/check_internet.dart';

class TestController extends GetxController{

   TextEditingController emailController = TextEditingController() ;
   TextEditingController passwordController=TextEditingController();
  
  late TestModel testModel;
  bool obscureText =false;
  var formKey = GlobalKey<FormState>();

  // login({required String email,required String password}) {
  //   if(formKey.currentState!.validate()){
  //     DioHelper.postData(url: EndPoints.signin, data: {
  //       'email':email,
  //       'password':password,
  //     }).then((value){
  //       testModel = TestModel.fromJson(value.data);
  //       print(testModel);
  //     }).catchError((error){
  //       print("error = $error");
  //
  //     }
  //
  //     );
  //   }
  // }
  login(BuildContext context,{required String email, required String password})async{

    if(await checkInternet()){
      if(formKey.currentState!.validate()){
        //showLoading(context);
        DioHelper.postData(url: EndPoints.signin, data: {
          'email':email,
          'password':password
        }).then((value){
          //Navigator.pop(context);
          testModel = TestModel.fromJson(value.data);
          print('value = ${value.data}');
        }).catchError((error){
          //Navigator.pop(context);
          print('error = $error');

          late String res;
          if(error.response.data['message'] == 'validation Errors'){
            res = error.response.data['Errors'][0][0]['message'];
          }else{
            res = error.response.data['message'];
          }
          print('res = $res');

          // showFlushbar(context,statusRequest: StatusRequest.failure, message: res);
        });
        //goToHomeScreen();
      }

    }else{
      //showFlushbar(context, message: 'you are currently offline', statusRequest: StatusRequest.offlineFailure);

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


}