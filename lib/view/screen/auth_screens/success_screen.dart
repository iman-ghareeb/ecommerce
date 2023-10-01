import 'package:ecommerce/core/constant/app_routes_name.dart';
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/view/widget/auth_widget/auth_screen_body.dart';
import 'package:ecommerce/view/widget/component_widgets/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                 Icon(
                  Icons.check_circle_outline,
                 color: Colors.deepOrange.withOpacity(0.5),
                size: 250,

                ),
               const  Padding(
                  padding:  EdgeInsets.symmetric(vertical: 15),
                  child: AuthScreenBody(body: 'It has been done successfully\nYou can Log in now with your email and password'),
                ),
                const Spacer(),
                customButton(
                    onPressed: (){
                      Get.offAllNamed(AppRoutesName.signin);
                    }, title: 'login'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
