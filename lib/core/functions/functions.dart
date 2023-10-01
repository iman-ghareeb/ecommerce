 import 'dart:io';

import 'package:ecommerce/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

myValidator(int min,int max,TextInputType type, val){
  if(val.isEmpty){
    return '$val can not be empty ';
  }
  if(val.length<min){
    return '$val can not smaller than $min';
  }
  if(val.length>max){
    return '$val can not greater than $max';
  }
 if(type == TextInputType.emailAddress){
   if(!GetUtils.isEmail(val)){
     return '$val is not an email';
   }
 }
 // else if(type == TextInputType.name){
 //    if(!GetUtils.isUsername(val)){
 //     return '$val is not an user name';
 //   }
 // }
 else if(type == TextInputType.phone){
   if(!GetUtils.isPhoneNumber(val)){
     return '$val is not an user phone';
   }
 }

}

goOutApp(){
  return Get.defaultDialog(
    title: 'Exit',
    middleText: 'Sure exit to the application?',
    actions: [
      MaterialButton(onPressed: (){
        exit(0);
      },
          color: Colors.grey,
          child:const Text(
          'Confirm',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
      )),
      MaterialButton(onPressed: (){
        Get.back();
      },
          color: appColor,
          child:const Text(
          'Cancel',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
      )),
    ]
  );
}

changePassword(bool obscureText){
  obscureText = !obscureText;
}
