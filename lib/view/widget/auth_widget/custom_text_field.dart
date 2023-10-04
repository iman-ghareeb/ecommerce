import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

class CustomTextField extends StatelessWidget {
   final String label ;
   final TextInputType type;
   final void Function()? onIconTapped;
   String? Function(String?) validator;
   final TextEditingController controller ;
   IconData? suffix ;
   final IconData prefix ;
   final bool obscure;


   CustomTextField(
       {Key? key,
         required this.label,
         this.onIconTapped,
         required this.validator,
         this.suffix,
         this.obscure = false,
         required this.prefix,
         required this.controller,
         required this.type
       }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   TextFormField(
      controller: controller,
      obscureText: obscure,
      keyboardType: type,
      validator: validator ,
      decoration: InputDecoration(
          hintText: label,
          //filled: true,
          hintStyle: const TextStyle(
              color: onBoardBodyColor,
              fontWeight: FontWeight.bold
          ),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: appColor
              )
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.grey[300]!
              )
          ),
          //fillColor: Colors.grey[300],
          contentPadding:const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 15
          ),
          prefixIcon:  Icon(
            prefix,
            color: Colors.grey,
          ),
        suffixIcon: InkWell(
          onTap: onIconTapped,
          child: Icon(
              suffix,
            color: appColor,
          ),
        )

      ),
    );
  }
}
