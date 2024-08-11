import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.onPressed, required this.textBtn, required this.textStyle});
final  void Function() onPressed;
final String textBtn;
final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      
      onPressed: onPressed,
      child: Text(textBtn,style: textStyle),
    );
  }
}