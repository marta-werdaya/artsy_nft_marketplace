import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';
import '../constant/asset_constant.dart';

class LogoAppBar extends StatelessWidget implements PreferredSize {
  const LogoAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget get child => AppBar();

  @override
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Padding(
          padding: EdgeInsets.only(right: AppSizes.p24),
          child: Row(
            children: [
              Image.asset(
                AssetConstants.iconArtsy,
                width: AppSizes.p32,
              ),
              AppSizes.gapH8,
              Text(
                'ARTSY',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
