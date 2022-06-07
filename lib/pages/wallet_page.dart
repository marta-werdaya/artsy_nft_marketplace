import 'package:artsy_nft_marketplace/constant/app_assets.dart';
import 'package:artsy_nft_marketplace/constant/app_sizes.dart';
import 'package:artsy_nft_marketplace/widgets/title_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/icon_display.dart';
import '../widgets/latest_transaction.dart';
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
              path: AppAssets.icon_active_add,
            ),
            tooltip: 'Open shopping cart',
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.p24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WalletCard(),
              TitleWidget(
                title: 'Latest Transaction',
                isAddMargin: false,
              ),
              LatestTransaction(),
            ],
          ),
        ),
      ),
    );
  }
}
