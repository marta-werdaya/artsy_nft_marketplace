import 'package:artsy_nft_marketplace/widgets/preview_card.dart';
import 'package:artsy_nft_marketplace/widgets/search_bar.dart';
import 'package:flutter/material.dart';

import '../data/k_test_product.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const products = kTestProducts;
    return Scaffold(
      appBar: AppBar(
        title: Text('Discover'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchBar(),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                for (int i = 0; i < products.length; i++)
                  PreviewCard(
                    imageUrl: products[i].url,
                    sellerName: products[i].sellerName,
                    nftName: products[i].nftName,
                  )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
