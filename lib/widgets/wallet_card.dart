import 'package:artsy_nft_marketplace/constant/app_assets.dart';
import 'package:artsy_nft_marketplace/widgets/wallet_info.dart';
import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../constant/app_sizes.dart';
import 'custom_card.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: AppColor.primary,
      margin: EdgeInsets.only(bottom: AppSizes.p32),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: AppSizes.p24,
              right: AppSizes.p24,
              bottom: AppSizes.p12,
              top: AppSizes.p24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Balance',
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Text(
                      '2,890.00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: AppSizes.p32,
                      ),
                    ),
                  ],
                ),

                // Logo ETH
                Image.asset(
                  AppAssets.icon_logo_eth,
                  height: AppSizes.p64,
                )
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: AppColor.white,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: AppSizes.p24,
                right: AppSizes.p24,
                bottom: AppSizes.p24,
                top: AppSizes.p12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WalletInfo(
                  name: 'Address',
                  value: '0xA8b28C',
                ),
                WalletInfo(
                  name: 'CVC',
                  value: '890',
                ),
                WalletInfo(
                  name: 'Expired',
                  value: '08/08/24',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
