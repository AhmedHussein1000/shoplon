import 'package:flutter/material.dart';
import 'package:shoplon/screens/signup/widgets/agreement_of_policy.dart';
import 'package:shoplon/utils/helpers/constants.dart';
import 'package:shoplon/utils/helpers/extensions.dart';
import 'package:shoplon/utils/helpers/routes.dart';
import 'package:shoplon/utils/widgets/custom_button.dart';
import 'package:shoplon/utils/widgets/custom_textformfield.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final GlobalKey<FormState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
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
          const AgreementOfPolicy(),
          const SizedBox(
            height: kdefaultPadding * 2,
          ),
          CustomButton(
              onPressed: () {
                if (_key.currentState!.validate()) {
                  context.pushReplacementNamed(Routes.login);
                }
              },
              text: 'Sign up')
        ],
      ),
    );
  }
}
