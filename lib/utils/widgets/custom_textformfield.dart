import 'package:flutter/material.dart';
import 'package:shoplon/utils/helpers/constants.dart';

class CustomTextformfield extends StatelessWidget {
  const CustomTextformfield({super.key, required this.hintText, required this.iconData, required this.obscureText, this.keyboardType});
  final String hintText;
  final IconData iconData;
  final bool obscureText;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your $hintText';
        } else {
          return null;
        }
      },
      keyboardType:keyboardType ?? TextInputType.none ,
      obscureText:obscureText ,
      decoration: InputDecoration(
        
          hintText: hintText, prefixIcon: Icon(iconData, color: kgreyColor)),
    );
  }
}
