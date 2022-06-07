import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../constant/app_sizes.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry margin;
  final Color color;
  const CustomCard({
    Key? key,
    required this.child,
    required this.margin,
    this.color = AppColor.primary_shade,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(AppSizes.p4),
        border: Border.all(
          color: AppColor.white,
          width: AppSizes.p05,
        ),
      ),
      child: child,
    );
  }
}
