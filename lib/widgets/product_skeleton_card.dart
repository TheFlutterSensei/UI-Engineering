import 'package:flutter/material.dart';
import 'package:ui_engineering/constants/spacing.dart';

class ProductSkeletonCard extends StatefulWidget {
  const ProductSkeletonCard({super.key});

  @override
  State<ProductSkeletonCard> createState() => _ProductSkeletonCardState();
}

class _ProductSkeletonCardState extends State<ProductSkeletonCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _shimmerController;

  @override
  void initState() {
    super.initState();
    _shimmerController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    )..repeat();
  }

  @override
  void dispose() {
    _shimmerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: AnimatedBuilder(
        animation: _shimmerController,
        builder: (context, child) {
          return ShaderMask(
            blendMode: BlendMode.srcATop,
            shaderCallback: (bounds) {
              return LinearGradient(
                begin: Alignment(-1.0 + 2.0 * _shimmerController.value, 0),
                end: Alignment(1.0 + 2.0 * _shimmerController.value, 0),
                colors: [
                  Colors.grey.shade300,
                  Colors.grey.shade200,
                  Colors.grey.shade300,
                ],
                stops: const [0.25, 0.5, 0.75],
              ).createShader(bounds);
            },
            child: child,
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadiusDirectional.only(
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
                  Container(
                    height: 16,
                    width: 140,
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(height: Spacing.sm),
                  Container(
                    height: 14,
                    width: 100,
                    color: Colors.grey.shade300,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
