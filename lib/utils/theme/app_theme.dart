
import 'package:flutter/material.dart';
import 'package:shoplon/utils/helpers/constants.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.light,
      fontFamily: "Plus Jakarta",
      primarySwatch: kprimaryMaterialColor,
      primaryColor: kprimaryColor,
      scaffoldBackgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: kblackColor),
      textTheme: const TextTheme(
        bodyMedium: TextStyle(color: kblackColor40),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(16),
    backgroundColor: kprimaryColor,
    foregroundColor: Colors.white,
    minimumSize: const Size(double.infinity, 32),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
  ),
),
      textButtonTheme: TextButtonThemeData(
  style: TextButton.styleFrom(foregroundColor: kprimaryColor),
),
      inputDecorationTheme: const InputDecorationTheme(
  fillColor: klightGreyColor,
  filled: true,
  hintStyle: TextStyle(color: kgreyColor),
  border: outlineInputBorder,
  enabledBorder: outlineInputBorder,
  focusedBorder: focusedOutlineInputBorder,
  errorBorder: errorOutlineInputBorder,
),
      checkboxTheme: CheckboxThemeData(
  checkColor: WidgetStateProperty.all(Colors.white),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular( 6),
    ),
  ),
  side: const BorderSide(color: kwhiteColor40),
).copyWith(
        side: const BorderSide(color: kblackColor40),
      ),
      appBarTheme: const AppBarTheme(
  backgroundColor: Colors.white,
  elevation: 0,
  iconTheme: IconThemeData(color: kblackColor),
  
),
      scrollbarTheme: ScrollbarThemeData(
  trackColor: WidgetStateProperty.all(kprimaryColor),
),
      
    );
  }


  

}

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
  borderSide: BorderSide(
    color: Colors.transparent,
  ),
);

const OutlineInputBorder focusedOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
  borderSide: BorderSide(color: kprimaryColor),
);

const OutlineInputBorder errorOutlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
  borderSide: BorderSide(
    color: kerrorColor,
  ),
);