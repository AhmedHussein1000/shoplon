import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shoplon/utils/helpers/constants.dart';
import 'package:shoplon/utils/styles.dart';

class AgreementOfPolicy extends StatefulWidget {
  const AgreementOfPolicy({super.key});

  @override
  State<AgreementOfPolicy> createState() => _AgreementOfPolicyState();
}

class _AgreementOfPolicyState extends State<AgreementOfPolicy> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: isChecked,
            onChanged: (value) {
              isChecked = !isChecked;
              setState(() {});
            }),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: 'I agree to the ',
              style:
                  Styles.styleRegular18(context).copyWith(color: kgreyColor)),
          TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  // context.pushNamed(Routes.termsOfService);
                },
              text: 'Terms of Service',
              style:
                  Styles.styleMedium18(context).copyWith(color: kprimaryColor)),
          TextSpan(
              text: '\n& Privacy Policy',
              style:
                  Styles.styleRegular18(context).copyWith(color: kgreyColor)),
        ]))
      ],
    );
  }
}
