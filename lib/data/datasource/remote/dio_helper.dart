import 'package:dio/dio.dart';
import 'package:ecommerce/core/constant/endpoints.dart';

class DioHelper{

  static late Dio dio;
  static init(){
    dio = Dio(
      BaseOptions(
        baseUrl: EndPoints.serverLink,
          headers: {
            'Content-Length':'application/json'
          }
      ),
    );
  }


static Future<Response> postData({required String url,required Map<String,dynamic> data}){

    return dio.post(url,data:data );
}
}