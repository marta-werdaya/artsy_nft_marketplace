import 'package:artsy_nft_marketplace/constant/app_assets.dart';
import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';
import 'custom_card.dart';

class ListTransaction extends StatelessWidget {
  const ListTransaction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      margin: EdgeInsets.only(bottom: AppSizes.p12),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.p16,
          vertical: AppSizes.p12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // AVATAR
            Row(
              children: [
                Image.asset(
                  AppAssets.imageNft1,
                  width: AppSizes.p48,
                ),
                // Title and price
                Padding(
                  padding: EdgeInsets.only(left: AppSizes.p12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gigantopus',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('9.60 ETH'),
                    ],
                  ),
                ),
              ],
            ),

            // Button
            Text(
              '0.1250 ETH',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: AppSizes.p16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
