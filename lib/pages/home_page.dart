import 'package:artsy_nft_marketplace/constant/app_sizes.dart';
import 'package:artsy_nft_marketplace/theme/theme_color.dart';
import 'package:flutter/material.dart';

import '../widgets/category_widget.dart';
import '../widgets/logo_app_bar.dart';
import '../widgets/search_bar.dart';
import '../widgets/title_widget.dart';
import '../widgets/top_seller.dart';
import '../widgets/trending_nft.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LogoAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeText(),
            SearchBar(),
            TitleWidget(
              title: 'Trending NFT',
              isSeeAll: true,
            ),
            CategoryWidget(),
            TrendingNFT(),
            TitleWidget(
              title: 'Top Seller',
              isSeeAll: true,
            ),
            TopSeller(),
          ],
        ),
      ),
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.p24),
      child: Column(
        children: [
          Text(
            'Welcome Back',
            style: TextStyle(
                fontWeight: FontWeight.w300, color: ThemeColor.inactive),
          ),
          Text(
            'Marta',
            style: TextStyle(
              fontSize: AppSizes.p32,
              fontWeight: FontWeight.bold,
            ),
          ),
          AppSizes.gapH32
        ],
      ),
    );
  }
}
