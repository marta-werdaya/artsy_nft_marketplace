import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';
import 'countdown_bid.dart';
import 'custom_card.dart';

class CountDownWidget extends StatelessWidget {
  const CountDownWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      margin: EdgeInsets.only(
          left: AppSizes.p24, right: AppSizes.p24, bottom: AppSizes.p32),
      child: Container(
          padding: EdgeInsets.symmetric(
              vertical: AppSizes.p12, horizontal: AppSizes.p24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Current Bid',
                    style: TextStyle(fontSize: AppSizes.p12),
                  ),
                  Text(
                    '0.1250 ETH',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: AppSizes.p16,
                    ),
                  ),
                ],
              ),
              CountDownBid()
            ],
          )),
    );
  }
}
