import 'package:artsy_nft_marketplace/theme/theme_color.dart';
import 'package:flutter/material.dart';

import 'app_sizes.dart';

class StyleButton {
  static final activeCategory = ElevatedButton.styleFrom(
    textStyle: TextStyle(fontSize: AppSizes.p16, fontWeight: FontWeight.w600),
    padding: EdgeInsets.symmetric(
      horizontal: AppSizes.p32,
      vertical: AppSizes.p8,
    ),
  );
  static final placeABid = ElevatedButton.styleFrom(
    textStyle: TextStyle(fontWeight: FontWeight.w600),
    padding: EdgeInsets.symmetric(
      horizontal: AppSizes.p16,
      vertical: AppSizes.p8,
    ),
  );
  static final inactiveCategory = OutlinedButton.styleFrom(
    textStyle: TextStyle(fontSize: AppSizes.p16, fontWeight: FontWeight.w600),
    backgroundColor: ThemeColor.bg,
    side: BorderSide(color: ThemeColor.inactive),
    padding: EdgeInsets.symmetric(
      horizontal: AppSizes.p32,
      vertical: AppSizes.p8,
    ),
  );
}
