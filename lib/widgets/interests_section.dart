import 'package:flutter/material.dart';
import 'package:ui_engineering/constants/spacing.dart';
import 'package:ui_engineering/constants/text_styles.dart';

class InterestsSection extends StatelessWidget {
  const InterestsSection({
    super.key,
    required this.interests,
    required this.selectedInterests,
    required this.onInterestChanged,
  });

  final List<String> interests;
  final Set<String> selectedInterests;
  final ValueChanged<String> onInterestChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Interests', style: TextStyles.title),
        const SizedBox(height: Spacing.sm),
        ...interests.map(
          (interest) => CheckboxListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(interest, style: TextStyles.body),
            value: selectedInterests.contains(interest),
            onChanged: (_) => onInterestChanged(interest),
          ),
        ),
        const SizedBox(height: Spacing.sm),
        Text(
          '${selectedInterests.length} interests selected',
          style: TextStyles.caption,
        ),
      ],
    );
  }
}
