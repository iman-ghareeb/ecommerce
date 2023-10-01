import 'package:flutter/material.dart';

Widget tetButton({
  required var onPressed,
  required String text,
   Color textColor = Colors.black
}){
  return TextButton(onPressed: onPressed, child: Text(
    text,
    style:  TextStyle(
      color: textColor,
      fontWeight: FontWeight.bold
    ),
  ));
}