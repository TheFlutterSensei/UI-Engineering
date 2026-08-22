import 'package:flutter/material.dart';
import 'package:ui_engineering/constants/colors.dart';
import 'package:ui_engineering/constants/spacing.dart';
import 'package:ui_engineering/constants/text_styles.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String subtitle;

  const ProfileCard({super.key, required this.name, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.surface,
      child: Padding(
        padding: const EdgeInsets.all(Spacing.md),
        child: Row(
          children: [
            const CircleAvatar(
              backgroundColor: AppColors.primary,
              child: Icon(Icons.person, color: AppColors.surface),
            ),
            const SizedBox(width: Spacing.md),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.title.copyWith(color: AppColors.text),
                  ),
                  const SizedBox(height: Spacing.xs),
                  Text(
                    subtitle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.caption.copyWith(color: AppColors.muted),
                  ),
                ],
              ),
            ),
            const SizedBox(width: Spacing.sm),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_horiz),
              color: AppColors.primary,
              tooltip: 'More options',
            ),
          ],
        ),
      ),
    );
  }
}
