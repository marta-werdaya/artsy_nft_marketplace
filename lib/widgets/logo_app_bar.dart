import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';
import '../constant/app_assets.dart';
import 'custom_dialog.dart';

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
          child: GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (_) => CustomDialog(
                  message:
                      'ARTSY merupakan sebuah aplikasi marketplace untuk NFT yang dirancang dari tahap design, dengan banyak inspirasi dari dribble, serta implementasi feature sederhana tanpa API, Aplikasi ini hanya menggunakan data dummy yang diakses secara singkronus.',
                ),
              );
            },
            child: Row(
              children: [
                Image.asset(
                  AppAssets.iconArtsy,
                  width: AppSizes.p32,
                ),
                AppSizes.gapW8,
                Text(
                  'ARTSY',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
