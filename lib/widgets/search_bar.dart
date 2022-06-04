import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: AppSizes.p32,
        left: AppSizes.p24,
        right: AppSizes.p24,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Search for the NFT',
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
