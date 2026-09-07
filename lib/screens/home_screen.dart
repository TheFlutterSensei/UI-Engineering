import 'package:flutter/material.dart';
import 'package:ui_engineering/constants/spacing.dart';
import 'package:ui_engineering/models/product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final products = [
    Product(
      name: 'Wireless Headphones',
      description: 'Comfortable wireless headphones',
      price: 2499.00,
    ),
    Product(
      name: 'Mechanical Keyboard',
      description: 'A Compact Mechanical Keyboard',
      price: 3499.00,
    ),
    Product(
      name: 'Wireless Mouse',
      description: 'A lightweight wireless mouse',
      price: 1499.00,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${products.length} products'),
            SizedBox(height: Spacing.lg),
            Text(
              '\$${products[1].name}\n${products[1].description}\n\$${products[1].price}',
            ),
          ],
        ),
      ),
    );
  }
}
