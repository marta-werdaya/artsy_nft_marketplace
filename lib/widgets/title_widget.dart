import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../constant/app_sizes.dart';
import 'custom_dialog.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final bool isSeeAll;
  final bool isAddMargin;

  const TitleWidget({
    Key? key,
    required this.title,
    this.isSeeAll = false,
    this.isAddMargin = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isAddMargin
          ? EdgeInsets.only(
              bottom: AppSizes.p16,
              left: AppSizes.p24,
              right: AppSizes.p24,
            )
          : EdgeInsets.only(bottom: AppSizes.p16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: AppSizes.p16,
              fontWeight: FontWeight.bold,
            ),
          ),
          isSeeAll
              ? TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) => CustomDialog(
                        isSuccess: false,
                        message:
                            'Sorry, this feature is not implemented yet : (',
                      ),
                    );
                  },
                  child: Text(
                    'See All',
                    style: TextStyle(
                      color: AppColor.secondary,
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
