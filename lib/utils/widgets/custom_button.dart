import 'package:flutter/material.dart';
import 'package:shoplon/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.text});
  final void Function() onPressed;
 final String text;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: onPressed,
      child: Text(text,style: Styles.styleSemiBold18(context) ,),
    );
  }
}