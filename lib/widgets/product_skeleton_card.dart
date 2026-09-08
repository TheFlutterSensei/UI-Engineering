import 'package:flutter/material.dart';
import 'package:ui_engineering/constants/spacing.dart';

class ProductSkeletonCard extends StatelessWidget {
  const ProductSkeletonCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.directional(
              topStart: Radius.circular(16),
              topEnd: Radius.circular(16),
            ),
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.grey.shade300,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(Spacing.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 16, width: 140, color: Colors.grey.shade300),
                const SizedBox(height: Spacing.sm),
                Container(height: 14, width: 100, color: Colors.grey.shade300),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
