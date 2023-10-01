import 'package:ecommerce/core/constant/onboarding_image_link.dart';

import '../../model/onboarding_model.dart';

class OnBoardingData{
  static List<OnBoardingModel> onBoardingData = [
    OnBoardingModel(
        title: 'Choose product',
        body: 'we have a 1000k+ Products, Choose\nyour product from our E-\ncommerce shop.',
        image: onBoardingImageOne),
    OnBoardingModel(
        title: 'Easy & Safe payment',
        body: 'Easy Checkout & Safe payment\nmethod, Trusted by our Customers\nfrom all over the world',
        image: onBoardingImageTwo),
    OnBoardingModel(title: 'Track your Order',
        body: "Rest Tracker has been Used for\nTrack your order. You'll know where\nyour product is at the moment",
        image: onBoardingImageThree),
    // OnBoardingModel(title: 'Fast Delivery',
    //     body: 'Reliable And Fast Delivery. we\nDeliver your product the fastest\nway possible.',
    //     image: onBoardingImageFour),
  ];
}