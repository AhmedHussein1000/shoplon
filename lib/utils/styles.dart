import 'package:flutter/material.dart';
import 'package:shoplon/utils/helpers/constants.dart';

abstract class Styles {


  static TextStyle styleBold20(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontWeight: FontWeight.w700,
        color:  kblackColor,
      );
       static TextStyle styleBold28(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 28),
        fontWeight: FontWeight.w700,
        color: kblackColor
      );



  // static TextStyle styleRegular16(BuildContext context) => TextStyle(
  //     fontSize: getResponsiveFontSize(context, fontSize: 16),
  //     fontFamily: 'Montserrat',
  //     fontWeight: FontWeight.w400,
  //     color: const Color(0xff064061));

  // static TextStyle styleMedium16(BuildContext context) => TextStyle(
  //       fontSize: getResponsiveFontSize(context, fontSize: 16),
  //       fontFamily: 'Montserrat',
  //       fontWeight: FontWeight.w500,
  //       color: const Color(0xff064061),
  //     );

  // static TextStyle styleSemiBold16(BuildContext context) => TextStyle(
  //       fontSize: getResponsiveFontSize(context, fontSize: 16),
  //       fontFamily: 'Montserrat',
  //       fontWeight: FontWeight.w600,
  //       color: const Color(0xff064061),
  //     );

  // static TextStyle styleSemiBold20(BuildContext context) => TextStyle(
  //       fontSize: getResponsiveFontSize(context, fontSize: 20),
  //       fontFamily: 'Montserrat',
  //       fontWeight: FontWeight.w600,
  //       color: const Color(0xff064061),
  //     );

  // static TextStyle styleRegular12(BuildContext context) => TextStyle(
  //       fontSize: getResponsiveFontSize(context, fontSize: 12),
  //       fontFamily: 'Montserrat',
  //       fontWeight: FontWeight.w400,
  //       color: const Color(0xffAAAAAA),
  //     );

  // static TextStyle styleSemiBold24(BuildContext context) => TextStyle(
  //       fontSize: getResponsiveFontSize(context, fontSize: 24),
  //       fontFamily: 'Montserrat',
  //       fontWeight: FontWeight.w600,
  //       color: const Color(0xff4EB7F2),
  //     );

  // static TextStyle styleRegular14(BuildContext context) => TextStyle(
  //       fontSize: getResponsiveFontSize(context, fontSize: 14),
  //       fontFamily: 'Montserrat',
  //       fontWeight: FontWeight.w400,
  //       color: const Color(0xffAAAAAA),
  //     );

  // static TextStyle styleSemiBold18(BuildContext context) => TextStyle(
  //       fontSize: getResponsiveFontSize(context, fontSize: 18),
  //       fontFamily: 'Montserrat',
  //       fontWeight: FontWeight.w600,
  //       color: const Color(0xff4EB7F2),
  //     );

  // static TextStyle styleBold16(BuildContext context) => TextStyle(
  //       fontSize: getResponsiveFontSize(context, fontSize: 16),
  //       fontFamily: 'Montserrat',
  //       fontWeight: FontWeight.w700,
  //       color: const Color(0xff4EB7F2),
  //     );

  // static TextStyle styleMedium20(BuildContext context) => TextStyle(
  //       fontSize: getResponsiveFontSize(context, fontSize: 20),
  //       fontFamily: 'Montserrat',
  //       fontWeight: FontWeight.w500,
  //       color: const Color(0xffFFFFFF),
  //     );
}
//scale factor
// responsive font size
// min max

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.of(context).size.width;

    return width / 450;
  
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  double responsiveFontSize = fontSize * getScaleFactor(context);
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}















