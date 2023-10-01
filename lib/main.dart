import 'package:ecommerce/data/datasource/remote/dio_helper.dart';
import 'package:ecommerce/routes.dart';
import 'package:ecommerce/view/screen/auth_screens/signup_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/constant/colors.dart';

late SharedPreferences sharedPreferences ;
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  DioHelper.initDio();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      //routes: routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme:const  AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
         iconTheme: IconThemeData(
           color: Colors.black
         )
        ),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'PlayfairDisplay',
        primarySwatch: Colors.deepOrange,
        textTheme: const TextTheme(
        displayLarge: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),
          bodyLarge: TextStyle(
              color: onBoardBodyColor,
              fontSize: 18,
              height: 1.5,
              fontWeight: FontWeight.bold
          )
        )
      ),

      getPages:getPages,
      home: SignUpScreen(),

    );
  }
}

