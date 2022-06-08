import 'package:artsy_nft_marketplace/constant/app_assets.dart';
import 'package:artsy_nft_marketplace/constant/app_sizes.dart';
import 'package:artsy_nft_marketplace/pages/onboarding.dart';
import 'package:artsy_nft_marketplace/widgets/glassmorphism.dart';
import 'package:artsy_nft_marketplace/widgets/title_widget.dart';
import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../data/k_test_product.dart';
import '../widgets/preview_card.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const products = kTestProducts;

    return Scaffold(
      // extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   title: Text('Account'),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              fit: StackFit.loose,
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  'assets/images/image_banner.png',
                ),
                GlassMorphism(
                  height: AppSizes.p225,
                  width: double.infinity,
                  child: Container(),
                ),
                // Image position
                Positioned(
                  bottom: -(AppSizes.p127 / 2),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppSizes.p127),
                      border: Border.all(
                        color: AppColor.bg,
                        width: AppSizes.p4,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundColor: AppColor.secondary,
                      backgroundImage: AssetImage(AppAssets.imageAvatar1),
                      radius: AppSizes.p64,
                    ),
                  ),
                ),

                Positioned(
                  top: AppSizes.p48,
                  child: Center(
                    child: Text(
                      'Account',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ),
                Positioned(
                  top: AppSizes.p48,
                  right: AppSizes.p24,
                  child: GestureDetector(
                    onTap: () => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: ((context) => OnBoardingPage()),
                      ),
                      (route) => false,
                    ),
                    child: Icon(Icons.logout),
                  ),
                ),
              ],
            ),
            AppSizes.gapH80,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.p24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'NopNop Gemoy',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: AppSizes.p20,
                            ),
                          ),
                          Text('280.8 K'),
                        ],
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text('Follow'),
                      ),
                    ],
                  ),
                  AppSizes.gapH32,
                  TitleWidget(
                    title: 'About',
                    isAddMargin: false,
                  ),
                  Text(
                    'Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse pariatur duis deserunt mollit dolore cillum minim tempor enim. Elit aute irure tempor cupidatat incididunt sint deserunt ut voluptate aute id deserunt nisi.',
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      color: AppColor.white.withOpacity(AppSizes.p05),
                    ),
                  ),
                  AppSizes.gapH32,
                  TitleWidget(
                    title: 'My Collection',
                    isAddMargin: false,
                  ),
                  Wrap(
                    spacing: AppSizes.p20,
                    runSpacing: AppSizes.p20,
                    children: [
                      for (int i = 6; i < products.length; i++)
                        PreviewCard(
                          id: products[i].id,
                          imageUrl: products[i].imageUrl,
                          sellerName: products[i].sellerName,
                          nftName: products[i].nftName,
                          isHeartEnable: false,
                        )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
