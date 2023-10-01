import 'package:flutter/material.dart';

class AuthScreenBody extends StatelessWidget {
  final String body;
  final double fontSize;
  const AuthScreenBody({Key? key, required this.body,this.fontSize=15}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      body,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
          fontSize: fontSize,
      ),
    );
  }
}
