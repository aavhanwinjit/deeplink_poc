import 'package:flutter/material.dart';

class OfferScreen extends StatelessWidget {
  final String id;

  const OfferScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Offer Screen"),
      ),
      body: Center(
        child: Text("Offer ID: $id"),
      ),
    );
  }
}
