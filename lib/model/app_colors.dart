import 'package:flutter/material.dart';

class AppColors {
  static const MaterialColor navyBlue = MaterialColor(
    0xFF002C79, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xFF002C79), //10%
      100: Color(0xFF002C79), //20%
      200: Color(0xFF002C79), //30%
      300: Color(0xFF002C79), //40%
      400: Color(0xFF002C79), //50%
      500: Color(0xFF002C79), //60%
      600: Color(0xFF002C79), //70%
      700: Color(0xFF002C79), //80%
      800: Color(0xFF002C79), //90%
      900: Color(0xFF002C79), //100%
    },
  );
}
