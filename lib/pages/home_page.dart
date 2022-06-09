import 'package:artsy_nft_marketplace/constant/app_sizes.dart';
import 'package:artsy_nft_marketplace/data/k_test_product.dart';
import 'package:flutter/material.dart';

import '../constant/app_breakpoint.dart';
import '../constant/app_colors.dart';
import '../widgets/category_widget.dart';
import '../widgets/logo_app_bar.dart';
import '../widgets/responsive_two_column_layout.dart';
import '../widgets/search_bar.dart';
import '../widgets/title_widget.dart';
import '../widgets/top_seller.dart';
import '../widgets/trending_nft.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
// TODO: make it responsive
  @override
  Widget build(BuildContext context) {
    var product = kTestProducts;
    return Scaffold(
      appBar: LogoAppBar(),
      body: SingleChildScrollView(
        child: ResponsiveTwoColumnLayout(
          spacing: AppSizes.p16,
          breakpoint: AppBreakpoint.tablet,
          startFlex: 3,
          endFlex: 3,
          rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
          rowCrossAxisAlignment: CrossAxisAlignment.start,
          columnCrossAxisAlignment: CrossAxisAlignment.start,
          startContent: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WelcomeText(),
              SearchBar(
                hint: 'Search NFT name or Seller name',
                products: product,
              ),
              TitleWidget(
                title: 'Trending NFT',
                isSeeAll: true,
              ),
              CategoryWidget(),
              TrendingNFT(),
            ],
          ),
          endContent: Column(
            children: [
              TitleWidget(
                title: 'Top Seller',
                isSeeAll: true,
              ),
              TopSeller(),
            ],
          ),
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
                fontWeight: FontWeight.w300, color: AppColor.inactive),
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
