import 'package:artsy_nft_marketplace/constant/app_sizes.dart';
import 'package:artsy_nft_marketplace/theme/theme_color.dart';
import 'package:flutter/material.dart';

import '../widgets/card_nft.dart';
import '../widgets/category_button.dart';
import '../widgets/list_card.dart';
import '../widgets/logo_app_bar.dart';
import '../widgets/search_bar.dart';
import '../widgets/title_widget.dart';

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
            TitleWidget(title: 'Trending NFT'),
            CategoryWidget(),
            TrendingNFT(),
            TitleWidget(title: 'Top Seller'),
            TopSeller(),
          ],
        ),
      ),
    );
  }
}

class TopSeller extends StatelessWidget {
  const TopSeller({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListCard(),
        ListCard(),
        ListCard(),
        ListCard(),
      ],
    );
  }
}

class TrendingNFT extends StatelessWidget {
  const TrendingNFT({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.p314,
      margin: EdgeInsets.only(bottom: AppSizes.p32),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CardNFT(),
          CardNFT(),
          CardNFT(),
        ],
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: AppSizes.p32,
        left: AppSizes.p24,
      ),
      height: AppSizes.p48,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        CategoryButton(
          isActive: true,
          title: 'Game',
        ),
        CategoryButton(
          isActive: false,
          title: 'Art',
        ),
        CategoryButton(
          isActive: false,
          title: 'Music',
        ),
        CategoryButton(
          isActive: false,
          title: 'Video',
        ),
        CategoryButton(
          isActive: false,
          title: 'GIF',
        ),
      ]),
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
