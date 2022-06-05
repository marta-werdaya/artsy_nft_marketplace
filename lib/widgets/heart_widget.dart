import 'package:artsy_nft_marketplace/constant/app_sizes.dart';
import 'package:artsy_nft_marketplace/constant/icon_path.dart';
import 'package:flutter/material.dart';

class HeartWidget extends StatefulWidget {
  const HeartWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<HeartWidget> createState() => _HeartWidgetState();
}

bool isLike = false;

class _HeartWidgetState extends State<HeartWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        isLike = !isLike;
      }),
      child: Padding(
        padding: EdgeInsets.all(AppSizes.p4),
        child: Image.asset(
          isLike ? IconPath.heart_red : IconPath.heart_white,
          height: AppSizes.p28,
        ),
      ),
    );
  }
}
