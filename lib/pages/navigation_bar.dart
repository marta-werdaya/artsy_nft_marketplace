import 'package:artsy_nft_marketplace/constant/icon_path.dart';
import 'package:artsy_nft_marketplace/pages/discover_page.dart';
import 'package:artsy_nft_marketplace/pages/home_page.dart';
import 'package:artsy_nft_marketplace/pages/profile_page.dart';
import 'package:artsy_nft_marketplace/pages/wallet_page.dart';
import 'package:artsy_nft_marketplace/pages/wishlist_page.dart';
import 'package:artsy_nft_marketplace/theme/theme_color.dart';
import 'package:flutter/material.dart';

import '../widgets/icon_display.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int currentIndex = 1;

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
        unselectedItemColor: ThemeColor.inactive,
        selectedItemColor: ThemeColor.primary,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: IconDisplay(
              path: IconPath.inactive_dasboard,
            ),
            activeIcon: IconDisplay(
              path: IconPath.active_dasboard,
            ),
            label: 'Home',
            backgroundColor: ThemeColor.primary_darker,
          ),
          BottomNavigationBarItem(
            icon: IconDisplay(
              path: IconPath.inactive_find,
            ),
            activeIcon: IconDisplay(
              path: IconPath.active_find,
            ),
            label: 'Find',
            backgroundColor: ThemeColor.primary_darker,
          ),
          BottomNavigationBarItem(
            icon: IconDisplay(
              path: IconPath.inactive_wallet,
            ),
            activeIcon: IconDisplay(
              path: IconPath.active_wallet,
            ),
            label: 'Wallet',
            backgroundColor: ThemeColor.primary_darker,
          ),
          BottomNavigationBarItem(
            icon: IconDisplay(
              path: IconPath.inactive_heart,
            ),
            activeIcon: IconDisplay(
              path: IconPath.active_heart,
            ),
            label: 'Wistlist',
            backgroundColor: ThemeColor.primary_darker,
          ),
          BottomNavigationBarItem(
            icon: IconDisplay(
              path: IconPath.inactive_user,
            ),
            activeIcon: IconDisplay(
              path: IconPath.active_user,
            ),
            label: 'User',
            backgroundColor: ThemeColor.primary_darker,
          ),
        ],
      ),
    );
  }
}
