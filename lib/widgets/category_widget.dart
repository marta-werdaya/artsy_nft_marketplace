import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';
import 'category_button.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: AppSizes.p32,
        left: AppSizes.p24,
      ),
      height: AppSizes.p48,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        CategoryButton(
          isActive: true,
          title: 'Game',
        ),
        CategoryButton(
          isActive: false,
          title: 'Art',
        ),
        CategoryButton(
          isActive: false,
          title: 'Music',
        ),
        CategoryButton(
          isActive: false,
          title: 'Video',
        ),
        CategoryButton(
          isActive: false,
          title: 'GIF',
        ),
      ]),
    );
  }
}
