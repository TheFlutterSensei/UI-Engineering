import 'package:flutter/material.dart';
import 'package:ui_engineering/constants/spacing.dart';
import 'package:ui_engineering/constants/text_styles.dart';
import 'package:ui_engineering/constants/colors.dart';

class BentoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const BentoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Spacing.lg),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: AppColors.surface, size: 32),
          Spacer(),
          Text(
            title,
            style: TextStyles.body.copyWith(color: AppColors.surface),
          ),
          SizedBox(height: Spacing.xs),
          Text(
            value,
            style: TextStyles.heading.copyWith(color: AppColors.surface),
          ),
        ],
      ),
    );
  }
}
