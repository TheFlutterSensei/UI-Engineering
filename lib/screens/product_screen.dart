import 'package:flutter/material.dart';
import 'package:ui_engineering/constants/spacing.dart';
import 'package:ui_engineering/constants/text_styles.dart';
import 'package:ui_engineering/models/product.dart';

class ProductScreen extends StatelessWidget {
  final Product product;

  const ProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    // final product = ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Spacing.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  product.image,
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: Spacing.md),
              Text(product.name, style: TextStyles.title),
              const SizedBox(height: Spacing.sm),
              Text(product.description),
              const SizedBox(height: Spacing.md),
              Text(
                product.formattedPrice,
                style: TextStyles.heading.copyWith(color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
