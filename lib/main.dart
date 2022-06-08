import 'package:artsy_nft_marketplace/pages/onboarding.dart';
import 'package:artsy_nft_marketplace/theme/theme_button.dart';
import 'package:artsy_nft_marketplace/theme/theme_color.dart';
import 'package:artsy_nft_marketplace/theme/theme_input.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff1B222A),
        colorScheme: ThemeColor.colorSchema,
        textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
        inputDecorationTheme: ThemeInput.inputDecoration,
        elevatedButtonTheme: ThemeButton.elevatedButton,
        textButtonTheme: ThemeButton.textButton,
        outlinedButtonTheme: ThemeButton.outlinedButton,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColor.transparent,
          shadowColor: AppColor.transparent,
        ),
      ),
      home: OnBoardingPage(),
    );
  }
}
