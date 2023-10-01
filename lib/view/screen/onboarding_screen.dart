
import 'package:ecommerce/core/constant/colors.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:ecommerce/main.dart';
import 'package:ecommerce/view/screen/auth_screens/login_screen.dart';
import 'package:ecommerce/view/widget/component_widgets/custom_text_button.dart';
import 'package:ecommerce/view/widget/component_widgets/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
   OnBoardingScreen({Key? key}) : super(key: key);
   var controller = PageController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: controller,
                itemCount: OnBoardingData.onBoardingData.length,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context,index)=> Column(
                  children: [
                     Padding(
                      padding: const  EdgeInsetsDirectional.only(
                          top: 35,
                          bottom: 50
                      ),
                      child: Text(
                        OnBoardingData.onBoardingData[index].title,
                        style:Theme.of(context).textTheme.displayLarge,
                      ),
                    ),
                    Image(
                      height: 220,
                      //fit: BoxFit.fill,
                      image: AssetImage(
                        OnBoardingData.onBoardingData[index].image,

                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      OnBoardingData.onBoardingData[index].body,
                      textAlign: TextAlign.center,
                      style:Theme.of(context).textTheme.bodyLarge,

                    )
                  ],
                ),
              ),
            ),
            Expanded(child: Column(
             children: [
               SmoothPageIndicator(
                 controller: controller,
                 count: OnBoardingData.onBoardingData.length,
                 effect:const WormEffect(
                   activeDotColor: appColor,
                   dotColor: onBoardBodyColor,
                   dotHeight: 7.5,
                   dotWidth: 7.5,
                   //strokeWidth: 8.5
                 ),

               ),
               const Spacer(),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 30),
                 child: customButton(
                     onPressed: ()async{
                   if(controller.page!.toInt() == OnBoardingData.onBoardingData.length-1 ){
                     await sharedPreferences.setString('onboard', 'onboard').then((value) {
                       Get.offAll(()=>LoginScreen());

                     });
                   }else{
                     controller.nextPage(duration:const Duration(
                       milliseconds: 700,
                     ), curve: Curves.fastLinearToSlowEaseIn);
                   }
                 }, title: 'continue'),
               ),
               const SizedBox(

               ),
               tetButton(onPressed: ()async{
                 await sharedPreferences.setString('onboard', 'onboard').then((value) {
                   Get.offAll(()=>LoginScreen());

                 });
               }, text: 'Skip'),
             ],
           ))
          ],
        ),
      ),
    );
  }
}
