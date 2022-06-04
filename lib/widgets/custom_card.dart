import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';
import '../theme/theme_color.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry margin;
  const CustomCard({
    Key? key,
    required this.child,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: ThemeColor.primary_shade,
        borderRadius: BorderRadius.circular(AppSizes.p4),
        border: Border.all(
          color: ThemeColor.white,
          width: AppSizes.p05,
        ),
      ),
      child: child,
    );
  }
}
