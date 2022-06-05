import 'dart:ui';

import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';

class GlassMorphism extends StatelessWidget {
  final double height;
  final double width;

  final Widget child;
  const GlassMorphism({
    Key? key,
    required this.child,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(AppSizes.p4),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: AppSizes.p32, sigmaY: AppSizes.p32),
        child: Container(
          height: height,
          width: width,
          color: Colors.white.withOpacity(AppSizes.p02),
          child: child,
        ),
      ),
    );
  }
}
