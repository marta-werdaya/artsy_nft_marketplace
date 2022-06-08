import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';
import '../pages/detail_nft.dart';
import 'custom_card.dart';
import 'heart_widget.dart';

class PreviewCard extends StatelessWidget {
  final int id;
  final String imageUrl;
  final String sellerName;
  final String nftName;
  final bool isHeartEnable;
  const PreviewCard({
    Key? key,
    required this.id,
    required this.imageUrl,
    required this.sellerName,
    required this.nftName,
    this.isHeartEnable = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) => DetailNFT(
                  productId: id,
                )),
          ),
        );
      },
      child: CustomCard(
        margin: EdgeInsets.only(bottom: AppSizes.pZero),
        child: Padding(
          padding: EdgeInsets.all(AppSizes.p8),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    imageUrl,
                    width: (MediaQuery.of(context).size.width - 92) / 2,
                  ),
                  AppSizes.gapH12,
                  Text(
                    nftName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    sellerName,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              isHeartEnable ? HeartWidget() : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
