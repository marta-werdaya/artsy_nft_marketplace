import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';
import '../theme/theme_color.dart';
import 'custom_card.dart';

class ListCard extends StatelessWidget {
  const ListCard({
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
                CircleAvatar(
                  backgroundColor: ThemeColor.secondary,
                  backgroundImage: AssetImage('assets/images/peep_5.png'),
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
