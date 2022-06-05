import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';

class WalletInfo extends StatelessWidget {
  final String name;
  final String value;
  const WalletInfo({
    Key? key,
    required this.name,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: AppSizes.p12,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: AppSizes.p20,
          ),
        ),
      ],
    );
  }
}
