import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../constant/app_sizes.dart';

class TimeBox extends StatelessWidget {
  final Widget child;
  const TimeBox({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      alignment: Alignment.center,
      height: AppSizes.p48,
      width: AppSizes.p48,
      decoration: BoxDecoration(
        color: AppColor.inactive,
        borderRadius: BorderRadius.circular(
          AppSizes.p4,
        ),
      ),
    );
  }
}
