import 'package:ecommerce/core/constant/app_routes_name.dart';
import 'package:ecommerce/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleWare extends GetMiddleware{
  @override

  int? get priority => 1;


  @override
  RouteSettings? redirect(String? key){
    if(sharedPreferences.getString('onboard') == 'onboard'){
      return const RouteSettings(name: AppRoutesName.signin);
    }
  }
}