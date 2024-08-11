import 'package:flutter/material.dart';
import 'package:shoplon/models/onboarding_model.dart';
import 'package:shoplon/screens/onboarding/widgets/next_page_indicators_row.dart';
import 'package:shoplon/screens/onboarding/widgets/onboarding_pageview.dart';
import 'package:shoplon/utils/helpers/extensions.dart';
import 'package:shoplon/utils/helpers/routes.dart';
import 'package:shoplon/utils/styles.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnBoardingBody> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
              onPressed: () {
                context.pushNamed(Routes.login);
              },
              child: Text(
                'Skip',
                style: Styles.styleBold20(context),
              )),
        ),
        OnboardingPageView(pageController: pageController),
        NextPageIndicatorsRow(onPressed: (){
          if(currentPage < onboardingData.length - 1){
          pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
          }else{
            context.pushNamed(Routes.login);
          }
        }, pageIndex: currentPage),
        const SizedBox(height: 16,)
      ],
    );
  }
}

