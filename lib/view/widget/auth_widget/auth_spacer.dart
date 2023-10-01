import 'package:flutter/material.dart';

class AuthSpacer extends StatelessWidget {
  final String text;
  const AuthSpacer({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      children:  [
        Expanded(
          child: Container(
            color: Colors.grey[300],
            height: 1,
          ),
        ),
         Text(
          text,
          style: TextStyle(
              fontSize: 17,
              color: Colors.black87
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.grey[300],
            height: 1,
          ),
        ),

      ],
    );
  }
}
