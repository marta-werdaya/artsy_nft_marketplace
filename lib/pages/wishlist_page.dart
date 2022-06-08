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
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.p24),
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              // SearchBar(),
              Wrap(
                spacing: AppSizes.p10,
                runSpacing: AppSizes.p10,
                children: [
                  for (int i = 0; i < products.length - 6; i++)
                    PreviewCard(
                      id: products[i].id,
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
