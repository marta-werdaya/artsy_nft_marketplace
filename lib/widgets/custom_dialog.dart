import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../constant/app_sizes.dart';
import 'custom_card.dart';

class CustomDialog extends StatelessWidget {
  final String message;
  final bool isSuccess;
  const CustomDialog({
    Key? key,
    required this.message,
    this.isSuccess = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: CustomCard(
        color: isSuccess ? AppColor.success : AppColor.danger,
        margin: EdgeInsets.zero,
        child: Container(
          decoration: BoxDecoration(
            // color: AppColor.bg,
            borderRadius: BorderRadius.circular(AppSizes.p4),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // header
              Container(
                padding: EdgeInsets.all(AppSizes.p24),
                margin: EdgeInsets.all(AppSizes.p16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSizes.p127),
                  color: AppColor.white,
                ),
                child: Icon(
                  isSuccess
                      ? Icons.file_download_done_outlined
                      : Icons.sms_failed,
                  size: AppSizes.p32,
                  color: isSuccess ? AppColor.success : AppColor.danger,
                ),
              ),
              //Content
              Padding(
                padding: EdgeInsets.only(bottom: AppSizes.p12),
                child: Text(
                  isSuccess ? 'Success' : 'Failed',
                  style: TextStyle(
                    fontSize: AppSizes.p24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(
                    // bottom: AppSizes.p64,
                    left: AppSizes.p24,
                    top: AppSizes.p8,
                    right: AppSizes.p24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(AppSizes.p4),
                    bottomLeft: Radius.circular(AppSizes.p4),
                  ),
                  color: AppColor.primaryDarker,
                ),
                child: Column(
                  children: [
                    Text(message),
                    AppSizes.gapH32,
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Close'),
                      ),
                    ),
                    AppSizes.gapH12,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
