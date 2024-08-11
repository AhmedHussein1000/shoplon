import 'package:flutter/material.dart';
import 'package:shoplon/utils/helpers/extensions.dart';
import 'package:shoplon/utils/helpers/routes.dart';
import 'package:shoplon/utils/styles.dart';
import 'package:shoplon/utils/widgets/custom_text_button.dart';

class HaveAccountOrNot extends StatelessWidget {
  const HaveAccountOrNot({super.key, required this.inLoginScreen});
  final bool inLoginScreen;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        inLoginScreen
            ? Text(
                'Don\'t have an account?',
                style: Styles.styleRegular18(context),
              )
            : Text(
                'Already have an account?',
                style: Styles.styleRegular18(context),
              ),
        const SizedBox(
          width: 5,
        ),
        CustomTextButton(
            onPressed: () {
              inLoginScreen
                  ? context.pushReplacementNamed(Routes.signup)
                  : context.pushReplacementNamed(Routes.login);
            },
            textBtn: inLoginScreen ? 'Sign up' : 'Log in',
            textStyle: Styles.styleMedium18(context))
      ],
    );
  }
}
