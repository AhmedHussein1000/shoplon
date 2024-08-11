import 'package:flutter/material.dart';
import 'package:shoplon/screens/login/widgets/login_form.dart';
import 'package:shoplon/utils/assets.dart';
import 'package:shoplon/utils/helpers/constants.dart';
import 'package:shoplon/utils/size_config.dart';
import 'package:shoplon/utils/styles.dart';
import 'package:shoplon/utils/widgets/have_account_or_not.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              Assets.imagesIllustrationLoginDark,
              height: SizeConfig.screenHeight * 0.40,
              fit: BoxFit.fill,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kdefaultPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Welcome Back!',
                    style: Styles.styleRegular28(context),
                  ),
                  const SizedBox(
                    height: kdefaultPadding,
                  ),
                  Text(
                    'Log in with your data that you entered during registration. ',
                    style: Styles.styleRegular18(context)
                        .copyWith(color: kgreyColor),
                  ),
                  const SizedBox(
                    height: kdefaultPadding,
                  ),
                  const LoginForm(),
                  const SizedBox(
                    height: kdefaultPadding / 2,
                  ),
                  const HaveAccountOrNot(
                    inLoginScreen: true,
                  ),
                  const SizedBox(
                    height: kdefaultPadding * 1.5,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
