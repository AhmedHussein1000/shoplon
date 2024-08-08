import 'package:flutter/material.dart';
import 'package:shoplon/models/onboarding_model.dart';
import 'package:shoplon/screens/onboarding/widgets/dot_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.pageIndex});
  final int pageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          onboardingData.length,
          (index) => Padding(padding: const EdgeInsets.only(right: 4) , child: DotIndicator(isActive: index == pageIndex)),
        )
      ],
    );
  }
}
