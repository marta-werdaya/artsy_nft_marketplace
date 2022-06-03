import 'package:artsy_nft_marketplace/theme/theme_color.dart';
import 'package:flutter/material.dart';

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
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 18),
      primary: ThemeColor.white,
      textStyle: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w600,
      ),
      side: BorderSide(
        color: ThemeColor.inactive,
      ),
    ),
  );

  static final textButton = TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: ThemeColor.secondary,
    ),
  );
}
