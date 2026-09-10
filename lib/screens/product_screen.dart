import 'package:flutter/material.dart';
import 'package:ui_engineering/models/product.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: Center(child: Text(product.name)),
    );
  }
}
