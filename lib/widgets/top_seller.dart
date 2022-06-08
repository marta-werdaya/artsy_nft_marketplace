import 'package:artsy_nft_marketplace/data/k_test_seller.dart';
import 'package:artsy_nft_marketplace/widgets/list_card.dart';
import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';

class TopSeller extends StatelessWidget {
  const TopSeller({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const seller = kTestSeller;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.p24),
      child: Column(
        children: [
          for (int i = 0; i < seller.length; i++)
            ListCard(
              name: seller[i].name,
              revenue: seller[i].revenue,
              imageUrl: seller[i].imageUrl,
            ),
        ],
      ),
    );
  }
}
