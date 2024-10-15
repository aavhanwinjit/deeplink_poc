import 'package:deeplink_poc/features/home/presentation/screens/home_screen.dart';
import 'package:deeplink_poc/features/home/presentation/screens/offer_screen.dart';
import 'package:deeplink_poc/features/login/presentation/screens/login_screen.dart';
import 'package:deeplink_poc/features/splash/presentation/screens/splash_screen.dart';
import 'package:deeplink_poc/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final navigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: navigatorKey,
  // initialLocation: AppRoutes.splashScreen,
  routes: [
    GoRoute(
      path: AppRoutes.splashScreen,
      name: AppRoutes.splashScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.loginScreen,
      name: AppRoutes.loginScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.homeScreen,
      name: AppRoutes.homeScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: [
        GoRoute(
          path: AppRoutes.offersScreen,
          name: AppRoutes.offersScreen,
          builder: (BuildContext context, GoRouterState state) {
            // final id = state.pathParameters['id'] as String;

            // debugPrint("id while navigating to details page: $id");

            return const OfferScreen(id: "555");
          },
        ),
        // GoRoute(
        //   path: AppRoutes.detailsScreen,
        //   name: AppRoutes.detailsScreen,
        //   builder: (BuildContext context, GoRouterState state) {
        //     final id = state.pathParameters['id'] as String;

        //     debugPrint("id while navigating to details page: $id");

        //     return DetailsScreen(id: id);
        //   },
        // ),
      ],
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text('${state.error}'),
    ),
  ),
);
