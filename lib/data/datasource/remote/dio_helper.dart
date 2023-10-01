import 'package:dio/dio.dart';
import 'package:ecommerce/core/constant/endpoints.dart';

class DioHelper{

 static late Dio dio;

 static initDio (){
    dio = Dio(
      BaseOptions(
        baseUrl:'https://ecommerce-rby0.onrender.com',
        receiveDataWhenStatusError: true,
        headers: {
          'Content-Type':'application/json'
        }

      ),

    );
  }


  static Future<Response> postData()async{
    return await dio.post('/auth/signup',

      data: {
      "firstName":"omar",
      "lastName":"abosrea",
      "email":"mhmd12mhdmhm@gmail.com",
      "password":"Omar1123@",
      "repassword":"Omar1123@",
      "phone":"01093663145",
      "age":13,
      "gender":"male"},
    );
  }
  static Future<Response> getData()async{
    return await dio.get('/products?page=1&size=2');
  }
}