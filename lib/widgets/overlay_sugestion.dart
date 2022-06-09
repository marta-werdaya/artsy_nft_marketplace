import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../model/product_model.dart';
import '../pages/detail_nft.dart';

class OverlaySugesstion extends StatelessWidget {
  final List<ProductModel> products;
  final Function onTap;
  const OverlaySugesstion({
    Key? key,
    required this.products,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.primary_shade,
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            onTap: () {
              onTap();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => DetailNFT(
                        productId: product.id,
                      )),
                ),
              );
            },
            leading: Image.asset(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
            title: Text(product.nftName),
            subtitle: Text(product.sellerName),
          );
        },
      ),
    );
  }
}
