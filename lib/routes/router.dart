import 'package:deeplink_poc/features/home/presentation/screens/details_screen.dart';
import 'package:deeplink_poc/features/home/presentation/screens/home_screen.dart';
import 'package:deeplink_poc/features/login/presentation/screens/login_screen.dart';
import 'package:deeplink_poc/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  // initialLocation: AppRoutes.splashScreen,
  routes: [
    // GoRoute(
    //   path: AppRoutes.splashScreen,
    //   name: AppRoutes.splashScreen,
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const SplashScreen();
    //   },
    // ),
    GoRoute(
      path: AppRoutes.homeScreen,
      name: AppRoutes.homeScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: [
        GoRoute(
          path: AppRoutes.detailsScreen,
          name: AppRoutes.detailsScreen,
          builder: (BuildContext context, GoRouterState state) {
            final id = state.pathParameters['id'] as String;

            debugPrint("id while navigating to details page: $id");

            return DetailsScreen(id: id);
          },
        ),
      ],
    ),
    GoRoute(
      path: AppRoutes.loginScreen,
      name: AppRoutes.loginScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginScreen();
      },
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text('${state.error}'),
    ),
  ),
);
