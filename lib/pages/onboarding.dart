import 'package:artsy_nft_marketplace/constant/app_assets.dart';
import 'package:artsy_nft_marketplace/constant/app_routes.dart';
import 'package:artsy_nft_marketplace/constant/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constant/app_colors.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage(AppAssets.imageOnBoarding),
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
                  AppColor.bg.withOpacity(AppSizes.pZero),
                  AppColor.bg,
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
                        color: AppColor.white,
                      ),
                ),
                Text('Buy, sell, and collect the best NFT around the world'),
                AppSizes.gapH104,
                Container(
                  margin: EdgeInsets.only(bottom: AppSizes.p24),
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () => context.goNamed(
                      AppRoutes.bottomNavigation.name,
                    ),
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
