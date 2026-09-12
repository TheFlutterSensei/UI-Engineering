import 'package:flutter/material.dart';
import 'package:ui_engineering/constants/spacing.dart';
import 'package:ui_engineering/constants/text_styles.dart';
import 'package:ui_engineering/models/product.dart';

class ProductScreen extends StatelessWidget {
  final Product product;
  const ProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Spacing.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: product.image,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    product.image,
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        const ColoredBox(
                          color: Color(0xFFF1F3F4),
                          child: SizedBox(
                            height: 250,
                            child: Center(
                              child: Icon(Icons.image_not_supported_outlined),
                            ),
                          ),
                        ),
                  ),
                ),
              ),
              const SizedBox(height: Spacing.md),
              Text(product.name, style: TextStyles.title),
              const SizedBox(height: Spacing.sm),
              Text(product.description),
              const SizedBox(height: Spacing.md),
              SelectableText(
                product.url,
                style: const TextStyle(color: Colors.blue),
              ),
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
