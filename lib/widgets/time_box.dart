import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../constant/app_sizes.dart';

class TimeBox extends StatelessWidget {
  const TimeBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: AppSizes.p48,
      width: AppSizes.p48,
      decoration: BoxDecoration(
        color: AppColor.inactive,
        borderRadius: BorderRadius.circular(
          AppSizes.p4,
        ),
      ),
      child: Text(
        '19',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: AppSizes.p16,
        ),
      ),
    );
  }
}
