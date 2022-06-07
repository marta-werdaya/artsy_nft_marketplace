import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';
import '../data/k_test_product.dart';
import 'card_nft.dart';

class TrendingNFT extends StatelessWidget {
  const TrendingNFT({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const products = kTestProducts;

    return Container(
      height: AppSizes.p314,
      margin: EdgeInsets.only(bottom: AppSizes.p32),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (int i = 2; i < products.length - 3; i++)
            CardNFT(
              imageUrl: products[i].url,
              price: products[i].price,
              nftName: products[i].nftName,
            )
        ],
      ),
    );
  }
}
