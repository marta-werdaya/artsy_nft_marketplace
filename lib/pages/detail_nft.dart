import 'package:artsy_nft_marketplace/constant/app_sizes.dart';
import 'package:artsy_nft_marketplace/widgets/heart_widget.dart';
import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../data/k_test_product.dart';
import '../widgets/countdown_widget.dart';
import '../widgets/detail_banner.dart';
import '../widgets/profile_info.dart';

class DetailNFT extends StatelessWidget {
  final productId;
  const DetailNFT({
    Key? key,
    required this.productId,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print(productId);
    final product =
        kTestProducts.firstWhere((product) => product.id == productId);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Detail NFT'),
        backgroundColor: AppColor.transparent,
        excludeHeaderSemantics: true,
        actions: [
          Padding(
            padding: EdgeInsets.all(AppSizes.p12),
            child: HeartWidget(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailBanner(
              product: product,
            ),
            AppSizes.gapH104,
            CountDownWidget(),
            ProfileInfo(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.p24),
              child: Text(
                'Amet minim mollit nAmet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat Amet minim mollit nAmet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. ',
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.p24, vertical: AppSizes.p16),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Place a Bid'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
