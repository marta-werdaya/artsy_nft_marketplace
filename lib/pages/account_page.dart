import 'package:artsy_nft_marketplace/constant/app_assets.dart';
import 'package:artsy_nft_marketplace/constant/app_sizes.dart';
import 'package:artsy_nft_marketplace/constant/app_string.dart';
import 'package:artsy_nft_marketplace/pages/onboarding.dart';
import 'package:artsy_nft_marketplace/widgets/glassmorphism.dart';
import 'package:artsy_nft_marketplace/widgets/title_widget.dart';
import 'package:flutter/material.dart';

import '../constant/app_breakpoint.dart';
import '../constant/app_colors.dart';
import '../data/k_test_product.dart';
import '../widgets/custom_dialog.dart';
import '../widgets/preview_card.dart';
import '../widgets/responsive_two_column_layout.dart';

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
        child: ResponsiveTwoColumnLayout(
          spacing: AppSizes.p16,
          breakpoint: AppBreakpoint.desktop,
          startFlex: 3,
          endFlex: 3,
          rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
          rowCrossAxisAlignment: CrossAxisAlignment.start,
          columnCrossAxisAlignment: CrossAxisAlignment.start,
          startContent: Column(
            children: [
              ProfileWidget(),
              AppSizes.gapH80,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.p24),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Marta',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: AppSizes.p20,
                              ),
                            ),
                            Text('280.8 K'),
                          ],
                        ),
                        OutlinedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (_) => CustomDialog(
                                message: AppString.about,
                              ),
                            );
                          },
                          child: Text('About App'),
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
                  ],
                ),
              ),
            ],
          ),
          endContent: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.p24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppSizes.gapH32,
                    TitleWidget(
                      title: 'My Collection',
                      isAddMargin: false,
                    ),
                    Wrap(
                      spacing: AppSizes.p10,
                      runSpacing: AppSizes.p10,
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
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      fit: StackFit.loose,
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          'assets/images/image_banner.png',
          height: MediaQuery.of(context).size.height / 3,
        ),
        GlassMorphism(
          height: MediaQuery.of(context).size.height / 3,
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
    );
  }
}
