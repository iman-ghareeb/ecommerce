

import 'package:ecommerce/core/constant/colors.dart';
import 'package:flutter/material.dart';

Widget customButton({
  required var onPressed,
  required String title,
  double height = 50,
  double width = double.infinity,
  Color buttonColor = appColor,
  double radius = 10,

}){
  return Container(
    height: height,
    width: width,
    decoration:  BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      color: buttonColor,
    ),
    child: MaterialButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,

        ),
      ),
    ),
  );
}