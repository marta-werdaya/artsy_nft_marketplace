import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';
import 'custom_card.dart';

class ListTransaction extends StatelessWidget {
  final String imageUrl;
  final String nftName;
  final double price;
  final String sellerName;
  const ListTransaction({
    Key? key,
    required this.imageUrl,
    required this.nftName,
    required this.price,
    required this.sellerName,
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
                  imageUrl,
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
                        nftName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(sellerName),
                    ],
                  ),
                ),
              ],
            ),

            // Button
            Text(
              '$price ETH',
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
