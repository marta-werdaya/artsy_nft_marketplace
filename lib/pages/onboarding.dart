import 'package:artsy_nft_marketplace/constant/app_sizes.dart';
import 'package:artsy_nft_marketplace/constant/image_path.dart';
import 'package:artsy_nft_marketplace/theme/theme_color.dart';
import 'package:flutter/material.dart';

import 'custom_navigation_bar.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage(ImagePath.onBoarding),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [
                  AppSizes.p02,
                  AppSizes.p05,
                ],
                colors: [
                  ThemeColor.bg.withOpacity(AppSizes.pZero),
                  ThemeColor.bg,
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(AppSizes.p24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Best NFT Marketplace',
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: ThemeColor.white,
                      ),
                ),
                Text('Buy, sell, and collect the best NFT around the world'),
                AppSizes.gapH104,
                Container(
                  margin: EdgeInsets.only(bottom: AppSizes.p24),
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => CustomNavigationBar()),
                        ),
                        (route) => false,
                      );
                    },
                    child: Text('Get Started'),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
