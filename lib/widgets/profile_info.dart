import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';
import 'custom_dialog.dart';

class ProfileInfo extends StatelessWidget {
  final String sellerName;
  final String nftName;
  final double followers;
  final String imageUrl;
  const ProfileInfo({
    Key? key,
    required this.sellerName,
    required this.nftName,
    required this.followers,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: AppSizes.p24, right: AppSizes.p24, bottom: AppSizes.p16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nftName,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: AppSizes.p16),
              ),
              AppSizes.gapH16,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(imageUrl),
                    // backgroundColor: AppColor.secondary,
                  ),
                  AppSizes.gapW12,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        sellerName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppSizes.p12,
                        ),
                      ),
                      Text(
                        '${followers}K Followers',
                        style: TextStyle(
                          fontSize: AppSizes.p12,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          OutlinedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => CustomDialog(
                  // isSuccess: false,
                  message:
                      'Congratulations your have already followed $sellerName',
                ),
              );
            },
            child: Text('Follow'),
          ),
        ],
      ),
    );
  }
}
