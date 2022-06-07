import 'package:artsy_nft_marketplace/constant/app_assets.dart';
import 'package:artsy_nft_marketplace/constant/app_string.dart';
import 'package:artsy_nft_marketplace/pages/discover_page.dart';
import 'package:artsy_nft_marketplace/pages/home_page.dart';
import 'package:artsy_nft_marketplace/pages/profile_page.dart';
import 'package:artsy_nft_marketplace/pages/wallet_page.dart';
import 'package:artsy_nft_marketplace/pages/wishlist_page.dart';
import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../widgets/icon_display.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List pages = [
      HomePage(),
      DiscoverPage(),
      WalletPage(),
      WistlistPage(),
      ProfilePage(),
    ];
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: currentIndex,
        unselectedItemColor: AppColor.inactive,
        selectedItemColor: AppColor.primary,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: IconDisplay(
              path: AppAssets.iconInactiveDasboard,
            ),
            activeIcon: IconDisplay(
              path: AppAssets.iconActiveDasboard,
            ),
            label: AppString.home,
            backgroundColor: AppColor.primaryDarker,
          ),
          BottomNavigationBarItem(
            icon: IconDisplay(
              path: AppAssets.iconInactiveFind,
            ),
            activeIcon: IconDisplay(
              path: AppAssets.iconActiveFind,
            ),
            label: AppString.discover,
            backgroundColor: AppColor.primaryDarker,
          ),
          BottomNavigationBarItem(
            icon: IconDisplay(
              path: AppAssets.iconInactiveWallet,
            ),
            activeIcon: IconDisplay(
              path: AppAssets.iconActiveWallet,
            ),
            label: AppString.wallet,
            backgroundColor: AppColor.primaryDarker,
          ),
          BottomNavigationBarItem(
            icon: IconDisplay(
              path: AppAssets.iconInactiveHeart,
            ),
            activeIcon: IconDisplay(
              path: AppAssets.iconActiveHeart,
            ),
            label: AppString.wistlist,
            backgroundColor: AppColor.primaryDarker,
          ),
          BottomNavigationBarItem(
            icon: IconDisplay(
              path: AppAssets.iconInactiveUser,
            ),
            activeIcon: IconDisplay(
              path: AppAssets.iconActiveUser,
            ),
            label: AppString.account,
            backgroundColor: AppColor.primaryDarker,
          ),
        ],
      ),
    );
  }
}
