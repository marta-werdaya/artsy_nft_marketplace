import 'package:flutter/material.dart';

import '../data/k_test_product.dart';
import '../widgets/preview_card.dart';
import '../widgets/search_bar.dart';

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
        child: Column(
          children: [
            SearchBar(),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                for (int i = 0; i < products.length - 6; i++)
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
