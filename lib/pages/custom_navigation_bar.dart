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
              path: AppAssets.icon_inactive_dasboard,
            ),
            activeIcon: IconDisplay(
              path: AppAssets.icon_active_dasboard,
            ),
            label: AppString.home,
            backgroundColor: AppColor.primary_darker,
          ),
          BottomNavigationBarItem(
            icon: IconDisplay(
              path: AppAssets.icon_inactive_find,
            ),
            activeIcon: IconDisplay(
              path: AppAssets.icon_active_find,
            ),
            label: AppString.discover,
            backgroundColor: AppColor.primary_darker,
          ),
          BottomNavigationBarItem(
            icon: IconDisplay(
              path: AppAssets.icon_inactive_wallet,
            ),
            activeIcon: IconDisplay(
              path: AppAssets.icon_active_wallet,
            ),
            label: AppString.wallet,
            backgroundColor: AppColor.primary_darker,
          ),
          BottomNavigationBarItem(
            icon: IconDisplay(
              path: AppAssets.icon_inactive_heart,
            ),
            activeIcon: IconDisplay(
              path: AppAssets.icon_active_heart,
            ),
            label: AppString.wistlist,
            backgroundColor: AppColor.primary_darker,
          ),
          BottomNavigationBarItem(
            icon: IconDisplay(
              path: AppAssets.icon_inactive_user,
            ),
            activeIcon: IconDisplay(
              path: AppAssets.icon_active_user,
            ),
            label: AppString.account,
            backgroundColor: AppColor.primary_darker,
          ),
        ],
      ),
    );
  }
}
