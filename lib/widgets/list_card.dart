import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';
import '../theme/theme_color.dart';

class ListCard extends StatelessWidget {
  const ListCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom: AppSizes.p12, left: AppSizes.p24, right: AppSizes.p24),
      height: AppSizes.p72,
      decoration: BoxDecoration(
        border: Border.all(color: ThemeColor.inactive, width: AppSizes.p05),
        color: ThemeColor.primary_shade,
        borderRadius: BorderRadius.circular(AppSizes.p4),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.p16,
          vertical: AppSizes.p8,
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
