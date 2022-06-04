import 'dart:ui';

import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';

class GlassMorphism extends StatelessWidget {
  final Widget child;
  const GlassMorphism({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(AppSizes.p4),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: AppSizes.p32, sigmaY: AppSizes.p32),
        child: Container(
          height: 127,
          width: 341,
          color: Colors.white.withOpacity(AppSizes.p02),
          child: child,
        ),
      ),
    );
  }
}
