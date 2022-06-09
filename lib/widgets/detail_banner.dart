import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../constant/app_sizes.dart';
import '../model/product_model.dart';
import 'glassmorphism.dart';

class DetailBanner extends StatelessWidget {
  final ProductModel product;

  const DetailBanner({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          product.imageUrl,
          width: MediaQuery.of(context).size.width >= 500
              ? 500
              : MediaQuery.of(context).size.width,
        ),
        GlassMorphism(
          child: Container(),
          height: MediaQuery.of(context).size.width >= 500
              ? 500
              : MediaQuery.of(context).size.width,
          width: double.infinity,
        ),

        // Image NFT
        Positioned(
          bottom: -72,
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.p4),
                border: Border.all(
                  color: AppColor.white,
                  width: AppSizes.p05,
                ),
              ),
              child: Image.asset(
                product.imageUrl,
                height: 294,
              )),
        ),
      ],
    );
  }
}
