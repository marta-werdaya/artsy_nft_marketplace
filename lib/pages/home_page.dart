import 'package:artsy_nft_marketplace/constant/asset_constant.dart';
import 'package:artsy_nft_marketplace/theme/theme_color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarHome(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WelcomeWidget(),
              CustomeSearchBarWidget(),
              CustomTitleWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTitleWidget extends StatelessWidget {
  const CustomTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            'Trending NFT',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'See All',
            style: TextStyle(
              color: ThemeColor.secondary,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomeSearchBarWidget extends StatelessWidget {
  const CustomeSearchBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 32),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Search for the NFT',
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Welcome Back',
          style: TextStyle(
              fontWeight: FontWeight.w300, color: ThemeColor.inactive),
        ),
        Text(
          'Marta',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 32,
        )
      ],
    );
  }
}

class CustomAppBarHome extends StatelessWidget implements PreferredSize {
  const CustomAppBarHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget get child => AppBar();

  @override
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 24),
          child: Row(
            children: [
              Image.asset(
                AssetConstants.iconArtsy,
                width: 30,
              ),
              SizedBox(width: 8),
              Text(
                'ARTSY',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
