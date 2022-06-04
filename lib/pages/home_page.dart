import 'dart:ui';

import 'package:artsy_nft_marketplace/constant/app_sizes.dart';
import 'package:artsy_nft_marketplace/constant/button_styles.dart';
import 'package:artsy_nft_marketplace/theme/theme_color.dart';
import 'package:flutter/material.dart';

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
            TitleWidget(),
            CategoryWidget(),
            TrendingNFT(),
          ],
        ),
      ),
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

class CardNFT extends StatelessWidget {
  const CardNFT({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // hold the picture and container for the picture
        Container(
          margin: EdgeInsets.only(right: AppSizes.p16),
          width: AppSizes.p341,
          decoration: BoxDecoration(
            color: ThemeColor.primary_shade,
            borderRadius: BorderRadius.circular(AppSizes.p4),
            border: Border.all(
              color: ThemeColor.white,
              width: 0.5,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(AppSizes.p8),
            child: Image.asset(
              'assets/images/nft1_artsy.png',
            ),
          ),
        ),
        // Glass looking placement for the text
        Positioned(
          left: AppSizes.pZero,
          bottom: AppSizes.pZero,
          child: GlassMorphism(
            child: Padding(
              padding: EdgeInsets.all(AppSizes.p16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Trending NFT'),
                      Text('0.39 ETH'),
                      Text('Highest Bid'),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: StyleButton.placeABid,
                    child: Text('Place a Bid'),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class GlassMorphism extends StatelessWidget {
  final Widget child;
  const GlassMorphism({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(AppSizes.p4),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: AppSizes.p32, sigmaY: AppSizes.p32),
        child: Container(
          height: 127,
          width: 341,
          color: Colors.white.withOpacity(AppSizes.p02),
          child: child,
        ),
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
        right: AppSizes.p24,
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

class CategoryButton extends StatelessWidget {
  final bool isActive;
  final String title;
  const CategoryButton({
    Key? key,
    required this.isActive,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: AppSizes.p12),
      child: Container(
        decoration: BoxDecoration(),
        child: ElevatedButton(
          style: isActive
              ? StyleButton.activeCategory
              : StyleButton.inactiveCategory,
          onPressed: () {},
          child: Text(title),
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
