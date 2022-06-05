import 'package:artsy_nft_marketplace/constant/app_sizes.dart';
import 'package:artsy_nft_marketplace/widgets/glassmorphism.dart';
import 'package:artsy_nft_marketplace/widgets/preview_card.dart';
import 'package:artsy_nft_marketplace/widgets/title_widget.dart';
import 'package:flutter/material.dart';

import '../theme/theme_color.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: Text('Profile'),
          )
        ],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                fit: StackFit.loose,
                clipBehavior: Clip.none,
                children: [
                  Image.asset(
                    'assets/images/image_banner.png',
                  ),
                  GlassMorphism(
                    height: AppSizes.p225,
                    width: double.infinity,
                    child: Container(),
                  ),
                  // Image position
                  Positioned(
                    bottom: -(AppSizes.p127 / 2),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppSizes.p127),
                        border: Border.all(
                          color: ThemeColor.bg,
                          width: AppSizes.p4,
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundColor: ThemeColor.secondary,
                        backgroundImage: AssetImage('assets/images/peep_5.png'),
                        radius: AppSizes.p64,
                      ),
                    ),
                  ),
                ],
              ),
              AppSizes.gapH80,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.p24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Marta Galani',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: AppSizes.p20,
                              ),
                            ),
                            Text('280.8 K'),
                          ],
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Follow'),
                        ),
                      ],
                    ),
                    AppSizes.gapH32,
                    TitleWidget(
                      title: 'About',
                      isAddMargin: false,
                    ),
                    Text(
                      'Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse pariatur duis deserunt mollit dolore cillum minim tempor enim. Elit aute irure tempor cupidatat incididunt sint deserunt ut voluptate aute id deserunt nisi.',
                      style: TextStyle(
                        fontWeight: FontWeight.w100,
                        color: ThemeColor.white.withOpacity(AppSizes.p05),
                      ),
                    ),
                    AppSizes.gapH32,
                    TitleWidget(
                      title: 'My Collection',
                      isAddMargin: false,
                    ),
                    Wrap(
                      spacing: AppSizes.p20,
                      runSpacing: AppSizes.p20,
                      children: [
                        PreviewCard(),
                        PreviewCard(),
                        PreviewCard(),
                        PreviewCard(),
                        PreviewCard(),
                        PreviewCard(),
                      ],
                    )
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
