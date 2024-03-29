import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../constant/app_sizes.dart';
import 'custom_dialog.dart';

class BidBottomSheet extends StatelessWidget {
  const BidBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.p24),
      child: Column(
        children: [
          AppSizes.gapH16,
          Container(
            height: AppSizes.p6,
            width: MediaQuery.of(context).size.width / 3,
            decoration: BoxDecoration(
                color: AppColor.inactive,
                borderRadius: BorderRadius.circular(AppSizes.p16)),
          ),
          AppSizes.gapH64,
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Enter Amount of Bid',
            ),
          ),
          AppSizes.gapH32,
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);

                showDialog(
                  context: context,
                  builder: (_) => CustomDialog(
                    // isSuccess: false,
                    message:
                        'CONGRATULATIONS, your bid has been added into the list.',
                  ),
                );
              },
              child: Text('Confirm'),
            ),
          ),
          AppSizes.gapH80,
        ],
      ),
    );
  }
}
