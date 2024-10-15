import 'package:deeplink_poc/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Splash Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.push(AppRoutes.loginScreen);
          },
          child: const Text("Go to login screen"),
        ),
      ),
    );
  }
}
