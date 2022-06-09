import 'package:artsy_nft_marketplace/constant/app_assets.dart';
import 'package:artsy_nft_marketplace/constant/app_breakpoint.dart';
import 'package:artsy_nft_marketplace/constant/app_sizes.dart';
import 'package:artsy_nft_marketplace/widgets/title_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_dialog.dart';
import '../widgets/icon_display.dart';
import '../widgets/latest_transaction.dart';
import '../widgets/responsive_two_column_layout.dart';
import '../widgets/wallet_card.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wallet'),
        actions: [
          IconButton(
            icon: IconDisplay(
              path: AppAssets.iconActiveAdd,
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => CustomDialog(
                  isSuccess: false,
                  message: 'Sorry, this feature is not implemented yet : (',
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: ResponsiveTwoColumnLayout(
          spacing: AppSizes.p16,
          breakpoint: AppBreakpoint.tablet,
          startFlex: 2,
          endFlex: 3,
          rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
          rowCrossAxisAlignment: CrossAxisAlignment.start,
          columnCrossAxisAlignment: CrossAxisAlignment.start,
          startContent: WalletCard(),
          endContent: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.p24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleWidget(
                  title: 'Latest Transaction',
                  isAddMargin: false,
                ),
                LatestTransaction(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
