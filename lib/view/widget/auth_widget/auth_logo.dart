import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';
import '../../../core/constant/onboarding_image_link.dart';

class AuthLogo extends StatelessWidget {
  const AuthLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            height: 60,
            width: 60,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset(
              logo,
              fit: BoxFit.cover,

            )
        ),
        const SizedBox(width: 20,),
        const Text(
          'e',
          style: TextStyle(
              color: appColor,
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),
        ),
        const Text(
          'shop',
          style: TextStyle(

              fontSize: 30,
              fontWeight: FontWeight.bold
          ),
        ),
      ],
    );
  }
}
