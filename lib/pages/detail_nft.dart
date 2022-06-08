import 'package:artsy_nft_marketplace/constant/app_sizes.dart';
import 'package:artsy_nft_marketplace/data/k_test_seller.dart';
import 'package:artsy_nft_marketplace/widgets/heart_widget.dart';
import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../data/k_test_product.dart';
import '../widgets/bid_bottom_sheet.dart';
import '../widgets/countdown_widget.dart';
import '../widgets/detail_banner.dart';
import '../widgets/profile_info.dart';

class DetailNFT extends StatefulWidget {
  final productId;
  const DetailNFT({
    Key? key,
    required this.productId,
  }) : super(key: key);

  @override
  State<DetailNFT> createState() => _DetailNFTState();
}

class _DetailNFTState extends State<DetailNFT> {
  bool closeTheBid = false;
  @override
  Widget build(BuildContext context) {
    print(widget.productId);
    final product =
        kTestProducts.firstWhere((product) => product.id == widget.productId);
    final seller =
        kTestSeller.firstWhere((seller) => seller.id == product.sellerId);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Detail NFT'),
        backgroundColor: AppColor.transparent,
        excludeHeaderSemantics: true,
        actions: [
          Padding(
            padding: EdgeInsets.all(AppSizes.p12),
            child: HeartWidget(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailBanner(
              product: product,
            ),
            AppSizes.gapH104,
            CountDownWidget(
              lockTheBid: (value) {
                setState(() {
                  closeTheBid = value;
                });
              },
            ),
            ProfileInfo(
              sellerName: seller.name,
              nftName: product.nftName,
              followers: seller.followers,
              imageUrl: seller.imageUrl,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.p24),
              child: Text(
                'jika coountdown telah mencapai "00 : 00 : 00" maka tombol akan di disable, countdown menjadi text "time is up!!!" dan "curent bid" akan berubah menjadi "FINAL BID". Untuk mengatur waktu countdown pergi ke file countdown_bid.dart secara default tiap masuk ke detail NFT akan digenerete waktu secara random dengan maximum di 24 jam.',
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.p24, vertical: AppSizes.p16),
              child: ElevatedButton(
                onPressed: closeTheBid
                    ? null
                    : () {
                        showModalBottomSheet(
                          backgroundColor: AppColor.bg,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(AppSizes.p8),
                              topRight: Radius.circular(AppSizes.p8),
                            ),
                          ),
                          context: context,
                          builder: (context) => BidBottomSheet(),
                        );
                      },
                child: Text('Place a Bid'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
