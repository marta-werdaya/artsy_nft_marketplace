import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class ThemeButton {
  static final elevatedButton = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 18),
      textStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
  static final outlinedButton = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppColor.white,
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 18),
      textStyle: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w600,
      ),
      side: BorderSide(
        color: AppColor.inactive,
      ),
    ),
  );

  static final textButton = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: AppColor.secondary,
    ),
  );
}
