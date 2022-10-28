import 'package:artsy_nft_marketplace/pages/onboarding.dart';
import 'package:go_router/go_router.dart';

import '../pages/custom_navigation_bar.dart';

enum AppRoutes {
  onboarding,
  bottomNavigation,
}

final routes = GoRouter(
  initialLocation: '/onboarding',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoutes.bottomNavigation.name,
      builder: (context, state) => CustomNavigationBar(),
    ),
    GoRoute(
      path: '/onboarding',
      name: AppRoutes.onboarding.name,
      builder: (context, state) => OnBoardingPage(),
    ),
  ],
);
