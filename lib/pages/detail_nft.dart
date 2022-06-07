import 'package:artsy_nft_marketplace/constant/app_sizes.dart';
import 'package:artsy_nft_marketplace/constant/image_path.dart';
import 'package:artsy_nft_marketplace/theme/theme_color.dart';
import 'package:artsy_nft_marketplace/widgets/custom_card.dart';
import 'package:artsy_nft_marketplace/widgets/glassmorphism.dart';
import 'package:artsy_nft_marketplace/widgets/heart_widget.dart';
import 'package:flutter/material.dart';

class DetailNFT extends StatelessWidget {
  const DetailNFT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Detail NFT'),
        backgroundColor: ThemeColor.transparent,
        excludeHeaderSemantics: true,
        actions: [
          Padding(
            padding: EdgeInsets.all(AppSizes.p12),
            child: HeartWidget(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailBanner(),
            AppSizes.gapH104,
            CountDownWidget(),
            ProfileInfo(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.p24),
              child: Text(
                'Amet minim mollit nAmet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat Amet minim mollit nAmet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. ',
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.p24, vertical: AppSizes.p16),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Place a Bid'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: AppSizes.p24, right: AppSizes.p24, bottom: AppSizes.p16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Shinsei Galverse',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: AppSizes.p16),
              ),
              AppSizes.gapH16,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(ImagePath.avatar1),
                    backgroundColor: ThemeColor.secondary,
                  ),
                  AppSizes.gapW12,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shinsei Galverse',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppSizes.p12,
                        ),
                      ),
                      Text(
                        '190.5K Followers',
                        style: TextStyle(
                          fontSize: AppSizes.p12,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text('Follow'),
          ),
        ],
      ),
    );
  }
}

class CountDownWidget extends StatelessWidget {
  const CountDownWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      margin: EdgeInsets.only(
          left: AppSizes.p24, right: AppSizes.p24, bottom: AppSizes.p32),
      child: Container(
          padding: EdgeInsets.symmetric(
              vertical: AppSizes.p12, horizontal: AppSizes.p24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Current Bid',
                    style: TextStyle(fontSize: AppSizes.p12),
                  ),
                  Text(
                    '0.1250 ETH',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: AppSizes.p16,
                    ),
                  ),
                ],
              ),
              CountDownBid()
            ],
          )),
    );
  }
}

class DetailBanner extends StatelessWidget {
  const DetailBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Image.asset(ImagePath.nft1),
        GlassMorphism(
          child: Container(),
          height: 360,
          width: double.infinity,
        ),

        // Image NFT
        Positioned(
          bottom: -72,
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSizes.p4),
                border: Border.all(
                  color: ThemeColor.white,
                  width: AppSizes.p05,
                ),
              ),
              child: Image.asset(
                ImagePath.nft1,
                height: 294,
              )),
        ),
      ],
    );
  }
}

class CountDownBid extends StatelessWidget {
  const CountDownBid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TimeBox(),
        TimeTicker(),
        TimeBox(),
        TimeTicker(),
        TimeBox(),
      ],
    );
  }
}

class TimeTicker extends StatelessWidget {
  const TimeTicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.p4),
      child: Text(
        ':',
        style: TextStyle(
          fontSize: AppSizes.p16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class TimeBox extends StatelessWidget {
  const TimeBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: AppSizes.p48,
      width: AppSizes.p48,
      decoration: BoxDecoration(
        color: ThemeColor.inactive,
        borderRadius: BorderRadius.circular(
          AppSizes.p4,
        ),
      ),
      child: Text(
        '19',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: AppSizes.p16,
        ),
      ),
    );
  }
}
