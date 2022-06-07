import 'package:artsy_nft_marketplace/constant/app_assets.dart';
import 'package:artsy_nft_marketplace/pages/detail_nft.dart';
import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';
import '../constant/app_buttons.dart';
import '../constant/app_string.dart';
import 'custom_card.dart';
import 'glassmorphism.dart';

class CardNFT extends StatelessWidget {
  const CardNFT({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => DetailNFT())));
      },
      child: Stack(
        children: [
          // hold the picture and container for the picture
          CustomCard(
            margin: EdgeInsets.only(right: AppSizes.p16),
            child: Padding(
              padding: EdgeInsets.all(AppSizes.p8),
              child: Image.asset(
                AppAssets.image_nft1,
              ),
            ),
          ),
          // Glass looking placement for the text
          Positioned(
            left: AppSizes.pZero,
            bottom: AppSizes.pZero,
            child: GlassMorphism(
              height: AppSizes.p127,
              width: AppSizes.p341,
              child: Padding(
                padding: EdgeInsets.all(AppSizes.p16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppString.trendingNFT,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: AppSizes.p20,
                          ),
                        ),
                        AppSizes.gapH20,
                        Text(
                          AppString.price,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: AppSizes.p16,
                          ),
                        ),
                        Text(
                          AppString.highetBid,
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: AppSizes.p12,
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: AppButton.placeABid,
                      child: Text('Place a Bid'),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
