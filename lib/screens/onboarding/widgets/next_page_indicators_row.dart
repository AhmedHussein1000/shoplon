import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoplon/screens/onboarding/widgets/dots_indicator.dart';
import 'package:shoplon/utils/assets.dart';
import 'package:shoplon/utils/helpers/constants.dart';

class NextPageIndicatorsRow extends StatelessWidget {
  const NextPageIndicatorsRow(
      {super.key, required this.onPressed, required this.pageIndex});
  final void Function() onPressed;
  final int pageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DotsIndicator(pageIndex: pageIndex),
        SizedBox(
          height: 60,
          width: 60,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16),
                backgroundColor: kprimaryColor,
                shape: const CircleBorder(),
              ),
              onPressed: onPressed,
              child: SvgPicture.asset(
                Assets.iconsArrowRight,
                colorFilter:
                    const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              )),
        )
      ],
    );
  }
}
