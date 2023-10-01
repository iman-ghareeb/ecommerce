import 'package:flutter/material.dart';

class AuthScreenTitle extends StatelessWidget {
  final String title;
  const AuthScreenTitle({Key? key, required this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:Theme.of(context).textTheme.displayLarge!.copyWith(
          fontSize: 25
      ),
      //textAlign: TextAlign.center,
    );
  }
}
