import 'package:artsy_nft_marketplace/theme/theme_color.dart';
import 'package:flutter/material.dart';

class ThemeColorSchema {
  static final colorSchema = ColorScheme.fromSeed(
    seedColor: ThemeColor.primary,
    brightness: Brightness.dark,
    primary: ThemeColor.primary,
    onPrimary: ThemeColor.white,
  );
}
