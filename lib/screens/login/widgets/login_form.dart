import 'package:flutter/material.dart';
import 'package:shoplon/utils/helpers/constants.dart';
import 'package:shoplon/utils/size_config.dart';
import 'package:shoplon/utils/styles.dart';
import 'package:shoplon/utils/widgets/custom_button.dart';
import 'package:shoplon/utils/widgets/custom_text_button.dart';
import 'package:shoplon/utils/widgets/custom_textformfield.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _globalKey,
      child: Column(
        children: [
          const CustomTextformfield(
              hintText: 'Email Address',
              keyboardType: TextInputType.emailAddress,
              iconData: Icons.email_outlined,
              obscureText: false),
          const SizedBox(
            height: kdefaultPadding,
          ),
          const CustomTextformfield(
              hintText: 'Password',
              iconData: Icons.lock_outline,
              obscureText: true),
          const SizedBox(
            height: kdefaultPadding / 2,
          ),
          Align(
            alignment: Alignment.center,
            child: CustomTextButton(
                onPressed: () {
                  // context.pushNamed(Routes.forgetPassword);
                },
                textBtn: 'Forget Password',
                textStyle: Styles.styleMedium18(context)),
          ),
          SizedBox(
            height: SizeConfig.screenHeight > 700
                ? SizeConfig.screenHeight * 0.06
                : kdefaultPadding,
          ),
          CustomButton(
              onPressed: () {
                if (_globalKey.currentState!.validate()) {
                  //context.pushNamed(Routes.home);
                }
              },
              text: 'Log in')
        ],
      ),
    );
  }
}
