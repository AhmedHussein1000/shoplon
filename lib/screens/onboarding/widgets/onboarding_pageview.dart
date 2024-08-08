import 'package:flutter/material.dart';
import 'package:shoplon/models/onboarding_model.dart';
import 'package:shoplon/screens/onboarding/widgets/onboarding_item.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: pageController,
        itemBuilder: (context, index) {
          return OnboardingItem(
              onboardingModel: onboardingData[index],
              topimage: index.isEven ? true : false);
        },
        itemCount: onboardingData.length,
      ),
    );
  }
}
