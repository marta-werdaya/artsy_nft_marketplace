import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';

class TimeTicker extends StatelessWidget {
  const TimeTicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.p4),
      child: Text(
        ':',
        style: TextStyle(
          fontSize: AppSizes.p16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
