import 'package:artsy_nft_marketplace/constant/app_sizes.dart';
import 'package:artsy_nft_marketplace/data/k_test_product.dart';
import 'package:artsy_nft_marketplace/widgets/preview_card.dart';
import 'package:artsy_nft_marketplace/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const products = kTestProducts;
    return Scaffold(
      appBar: AppBar(
        title: Text('Discover'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBar(
              products: products,
              hint: 'Search with NFT name or seller name',
            ),
            Wrap(
              spacing: AppSizes.p10,
              runSpacing: AppSizes.p10,
              children: [
                for (int i = 0; i < products.length; i++)
                  PreviewCard(
                    id: products[i].id,
                    imageUrl: products[i].imageUrl,
                    sellerName: products[i].sellerName,
                    nftName: products[i].nftName,
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}
