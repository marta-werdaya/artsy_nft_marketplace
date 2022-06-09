import 'package:artsy_nft_marketplace/constant/app_colors.dart';
import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';
import 'countdown_bid.dart';
import 'custom_card.dart';

class CountDownWidget extends StatefulWidget {
  final Function(bool) lockTheBid;
  const CountDownWidget({
    Key? key,
    required this.lockTheBid,
  }) : super(key: key);

  @override
  State<CountDownWidget> createState() => _CountDownWidgetState();
}

class _CountDownWidgetState extends State<CountDownWidget> {
  bool timeIsUp = false;

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var margin = deviceWidth >= 700 ? 200.0 : AppSizes.p24;
    return CustomCard(
      margin:
          EdgeInsets.only(left: margin, right: margin, bottom: AppSizes.p32),
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
                    timeIsUp ? 'Final Bid' : 'Current Bid',
                    style: timeIsUp
                        ? TextStyle(
                            fontSize: AppSizes.p12, color: AppColor.success)
                        : TextStyle(fontSize: AppSizes.p12),
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
              CountDownBid(
                onTimeIsUp: () {
                  setState(() {
                    widget.lockTheBid(true);
                    timeIsUp = true;
                  });
                },
              )
            ],
          )),
    );
  }
}
