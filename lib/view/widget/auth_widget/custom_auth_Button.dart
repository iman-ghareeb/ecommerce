import 'package:flutter/material.dart';

class CusTomAuthButton extends StatelessWidget {
  void Function()? onPressed;
 final IconData? icon;
 Color? iconColor ;
 Color textColor  ;
 final String text;
 final int buttonColor;
   CusTomAuthButton(
      {Key? key,
        this.icon,
        required this.onPressed,
        required this.text,
        required this.buttonColor,
         this.iconColor =  Colors.white  ,
        this.textColor= Colors.white,

      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration:  BoxDecoration(
          color:  Color(buttonColor),
          borderRadius: BorderRadius.circular(5)
      ),
      child: MaterialButton(
        onPressed: onPressed,


        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
             Icon(
            icon,
              color: iconColor,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              text,
              style:  TextStyle(
                color: textColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,

              ),
            )
          ],
        ),
      ),
    );
  }
}
