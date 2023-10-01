import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';
import '../component_widgets/custom_text_button.dart';

class RegisterOrLogin extends StatelessWidget {
  final String textOne;
  final String buttonText;
  void Function() onPressed;

   RegisterOrLogin({Key? key,
    required this.textOne,
    required this.buttonText,
    required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(
         textOne,
          style: const TextStyle(
              fontSize: 16
          ),
        ),
        TextButton(
            onPressed: onPressed,
            child: Text(
              buttonText,
              style: const TextStyle(
                color: appColor,
                fontWeight: FontWeight.bold
              ),
            ),
        )

      ],
    );
  }
}
