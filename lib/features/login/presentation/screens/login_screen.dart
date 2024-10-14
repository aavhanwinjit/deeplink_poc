import 'package:deeplink_poc/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.push(AppRoutes.homeScreen);
          },
          child: const Text("Go to Home screen"),
        ),
      ),
    );
  }
}
