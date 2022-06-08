import 'package:flutter/material.dart';

import '../constant/app_sizes.dart';
import '../constant/app_buttons.dart';
import 'custom_dialog.dart';

class CategoryButton extends StatelessWidget {
  final bool isActive;
  final String title;
  const CategoryButton({
    Key? key,
    required this.isActive,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: AppSizes.p12),
      child: Container(
        decoration: BoxDecoration(),
        child: ElevatedButton(
          style:
              isActive ? AppButton.activeCategory : AppButton.inactiveCategory,
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) => CustomDialog(
                isSuccess: false,
                message: 'Sorry, this feature is not implemented yet : (',
              ),
            );
          },
          child: Text(title),
        ),
      ),
    );
  }
}
