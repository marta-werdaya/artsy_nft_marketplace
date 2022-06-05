import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';
import '../constant/button_styles.dart';
import 'custom_card.dart';
import 'glassmorphism.dart';

class CardNFT extends StatelessWidget {
  const CardNFT({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // hold the picture and container for the picture
        CustomCard(
          margin: EdgeInsets.only(right: AppSizes.p16),
          child: Padding(
            padding: EdgeInsets.all(AppSizes.p8),
            child: Image.asset(
              'assets/images/nft1_artsy.png',
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
                        'Trending NFT',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppSizes.p20,
                        ),
                      ),
                      AppSizes.gapH20,
                      Text(
                        '0.39 ETH',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: AppSizes.p16,
                        ),
                      ),
                      Text(
                        'Highest Bid',
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: AppSizes.p12,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: StyleButton.placeABid,
                    child: Text('Place a Bid'),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
