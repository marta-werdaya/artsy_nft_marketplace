import 'package:artsy_nft_marketplace/constant/app_sizes.dart';
import 'package:flutter/material.dart';

import '../data/k_test_product.dart';
import '../widgets/preview_card.dart';

class WistlistPage extends StatelessWidget {
  const WistlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const products = kTestProducts;

    return Scaffold(
      appBar: AppBar(
        title: Text('WistList'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.p24),
          child: Column(
            children: [
              // SearchBar(),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  for (int i = 0; i < products.length - 6; i++)
                    PreviewCard(
                      imageUrl: products[i].imageUrl,
                      sellerName: products[i].sellerName,
                      nftName: products[i].nftName,
                      isHeartEnable: true,
                    )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
