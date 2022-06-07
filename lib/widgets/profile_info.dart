import 'package:flutter/material.dart';

import '../constant/app_assets.dart';
import '../constant/app_colors.dart';
import '../constant/app_sizes.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
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
                'Shinsei Galverse',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: AppSizes.p16),
              ),
              AppSizes.gapH16,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(AppAssets.imageAvatar1),
                    backgroundColor: AppColor.secondary,
                  ),
                  AppSizes.gapW12,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shinsei Galverse',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppSizes.p12,
                        ),
                      ),
                      Text(
                        '190.5K Followers',
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
            onPressed: () {},
            child: Text('Follow'),
          ),
        ],
      ),
    );
  }
}
