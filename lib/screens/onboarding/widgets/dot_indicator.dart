import 'package:flutter/material.dart';
import 'package:shoplon/utils/helpers/constants.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(duration: const Duration(milliseconds: 300),
    height: isActive ? 12 : 4  ,
    width: 4 ,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: isActive? kprimaryColor : kgreyColor
    ),);
  }
}