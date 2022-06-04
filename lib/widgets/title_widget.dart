import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';
import '../theme/theme_color.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: AppSizes.p16,
        left: AppSizes.p24,
        right: AppSizes.p24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'Trending NFT',
            style: TextStyle(
              fontSize: AppSizes.p16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'See All',
            style: TextStyle(
              color: ThemeColor.secondary,
            ),
          ),
        ],
      ),
    );
  }
}
