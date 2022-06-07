import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class ThemeColor {
  static final colorSchema = ColorScheme.fromSeed(
    seedColor: AppColor.primary,
    brightness: Brightness.dark,
    primary: AppColor.primary,
    onPrimary: AppColor.white,
  );
}
