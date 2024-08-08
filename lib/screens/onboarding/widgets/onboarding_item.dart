import 'package:flutter/material.dart';
import 'package:shoplon/models/onboarding_model.dart';
import 'package:shoplon/utils/helpers/constants.dart';
import 'package:shoplon/utils/size_config.dart';
import 'package:shoplon/utils/styles.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem(
      {super.key, required this.onboardingModel, required this.topimage});
  final OnboardingModel onboardingModel;
  final bool topimage;

  @override
  Widget build(BuildContext context) {
    return topimage
        ? Column(
            children: [
              const Spacer(),
              Image.asset(
                onboardingModel.image,
                height: SizeConfig.screenHeight * 0.25,
              ),
              const Spacer(),
              Text(
                onboardingModel.title,
                textAlign: TextAlign.center,
                style: Styles.styleBold28(context),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                onboardingModel.description,
                style: Styles.styleBold20(context)
                    .copyWith(color: kgreyColor, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
            ],
          )
        : Column(
            children: [
              const Spacer(),
              Text(
                onboardingModel.title,
                textAlign: TextAlign.center,
                style: Styles.styleBold28(context),
              ),
              const SizedBox(height: 16),
              Text(
                onboardingModel.description,
                style: Styles.styleBold20(context)
                    .copyWith(color: kgreyColor, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              Image.asset(
                onboardingModel.image,
                height: SizeConfig.screenHeight * 0.25,
              ),
              const Spacer()
            ],
          );
  }
}
