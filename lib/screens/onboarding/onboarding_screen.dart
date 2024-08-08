import 'package:flutter/material.dart';
import 'package:shoplon/screens/onboarding/widgets/onboarding_body.dart';
import 'package:shoplon/utils/size_config.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return const  Scaffold(
      body: SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric( horizontal:  16.0),
            child: OnBoardingBody(),
          )),
    );
  }
}
