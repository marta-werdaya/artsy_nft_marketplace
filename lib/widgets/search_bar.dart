import 'package:artsy_nft_marketplace/constant/app_colors.dart';
import 'package:artsy_nft_marketplace/model/product_model.dart';
import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';
import 'list_transaction.dart';

class SearchBar extends StatefulWidget {
  final List<ProductModel> products;
  final String hint;
  const SearchBar({
    Key? key,
    required this.products,
    required this.hint,
  }) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

final controller = TextEditingController();
List<ProductModel> productsAll = [];

class _SearchBarState extends State<SearchBar> {
  void searchLogic(String query) {
    final suggestion = widget.products.where((product) {
      final productTitle = product.nftName.toLowerCase();
      final productSeller = product.sellerName.toLowerCase();
      final input = query.toLowerCase();

      return productTitle.contains(input) || productSeller.contains(input);
    }).toList();
    setState(() => productsAll = suggestion);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            bottom: AppSizes.p32,
            left: AppSizes.p24,
            right: AppSizes.p24,
          ),
          child: TextFormField(
            controller: controller,
            onChanged: searchLogic,
            decoration: InputDecoration(
              hintText: widget.hint,
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        if (controller.text == '')
          SizedBox()
        else
          Positioned(
            top: MediaQuery.of(context).size.height / 10,
            left: MediaQuery.of(context).size.height -
                (MediaQuery.of(context).size.height - 24),
            child: Container(
              color: AppColor.bg,
              width: MediaQuery.of(context).size.width - 48,
              height: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: productsAll.length,
                itemBuilder: (context, index) {
                  final product = productsAll[index];
                  return ListTransaction(
                    id: product.id,
                    imageUrl: product.imageUrl,
                    nftName: product.nftName,
                    price: product.price,
                    sellerName: product.sellerName,
                  );
                },
              ),
            ),
          ),
      ],
    );
  }
}
