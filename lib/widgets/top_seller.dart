import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';
import 'list_card.dart';

class TopSeller extends StatelessWidget {
  const TopSeller({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.p24),
      child: Column(
        children: [
          ListCard(),
          ListCard(),
          ListCard(),
          ListCard(),
        ],
      ),
    );
  }
}
