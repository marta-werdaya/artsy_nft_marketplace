import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';
import 'custom_card.dart';

class ListCard extends StatelessWidget {
  final String name;
  final double revenue;
  final String imageUrl;
  const ListCard({
    Key? key,
    required this.name,
    required this.revenue,
    required this.imageUrl,
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
                CircleAvatar(
                  backgroundImage: AssetImage(imageUrl),
                  radius: AppSizes.p24,
                ),
                // Title and price
                Padding(
                  padding: EdgeInsets.only(left: AppSizes.p12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('$revenue ETH'),
                    ],
                  ),
                ),
              ],
            ),

            // Button
            OutlinedButton(
              onPressed: () {},
              child: Text('Follow'),
            )
          ],
        ),
      ),
    );
  }
}
