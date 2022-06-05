import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';
import 'custom_card.dart';
import 'heart_widget.dart';

class PreviewCard extends StatelessWidget {
  const PreviewCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      margin: EdgeInsets.only(bottom: AppSizes.pZero),
      child: Padding(
        padding: EdgeInsets.all(AppSizes.p8),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/nft1_artsy.png',
                  width: 141,
                ),
                AppSizes.gapH12,
                Text(
                  'Los Moertos World',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Senior Creator',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                ),
              ],
            ),
            HeartWidget(),
          ],
        ),
      ),
    );
  }
}
