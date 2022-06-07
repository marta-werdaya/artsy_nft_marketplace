import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class ThemeInput {
  static const inputDecoration = InputDecorationTheme(
    fillColor: AppColor.primary_shade,
    filled: true,
    border: OutlineInputBorder(borderSide: BorderSide.none),
  );
}
