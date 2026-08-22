import 'package:flutter/material.dart';
import 'package:ui_engineering/constants/spacing.dart';
import 'package:ui_engineering/constants/text_styles.dart';

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
      padding: const EdgeInsets.all(Spacing.md),
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.white, size: 32),
          Spacer(),
          Text(title, style: TextStyles.body.copyWith(color: Colors.white)),
          SizedBox(height: Spacing.xs),
          Text(value, style: TextStyles.heading.copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}
