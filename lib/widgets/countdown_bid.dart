import 'package:artsy_nft_marketplace/widgets/time_box.dart';
import 'package:artsy_nft_marketplace/widgets/time_ticker.dart';
import 'package:flutter/material.dart';

class CountDownBid extends StatelessWidget {
  const CountDownBid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TimeBox(),
        TimeTicker(),
        TimeBox(),
        TimeTicker(),
        TimeBox(),
      ],
    );
  }
}
