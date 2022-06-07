import 'package:artsy_nft_marketplace/data/k_test_product.dart';
import 'package:flutter/material.dart';

import 'list_transaction.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const products = kTestProducts;
    return Column(
      children: [
        for (int i = 4; i < products.length; i++)
          ListTransaction(
            imageUrl: products[i].imageUrl,
            nftName: products[i].nftName,
            price: products[i].price,
            sellerName: products[i].sellerName,
          ),
      ],
    );
  }
}
