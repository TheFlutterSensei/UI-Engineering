import 'package:flutter/material.dart';
import 'package:ui_engineering/constants/spacing.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Products Screen'),
            SizedBox(height: Spacing.md),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: const Text('View Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
