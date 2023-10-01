import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/class/status_request.dart';
import 'package:ecommerce/core/constant/endpoints.dart';

import 'package:http/http.dart' as http;

import '../functions/check_internet.dart';

class Crud {
  static Future<dynamic> postData() async {

     var response = await http.post(Uri.parse(
       'https://ecommerce-rby0.onrender.com/auth/signup',),
       body: {
      "firstName":"omar",
      "lastName":"abosrea",
      "email":"mhmd12mhdmhm@gmail.com",
      "password":"Omar123@",
      "repassword":"Omar123@",
      "phone":"01253763145",
      "age":"21",
      "gender":"male"

    },

     ).then((value){
       print(jsonDecode(value.body));
     }).catchError((error){
     });

  }


  static Future<dynamic> getDate()async{
    var response = await http.get(Uri.parse(EndPoints.serverLink)).then((value) {
      print(value);
    });
  }
}