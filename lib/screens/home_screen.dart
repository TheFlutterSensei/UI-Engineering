import 'package:flutter/material.dart';
import 'package:ui_engineering/constants/spacing.dart';
import 'package:ui_engineering/constants/text_styles.dart';
import 'package:ui_engineering/widgets/bento_card.dart';
import 'package:ui_engineering/widgets/profile_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Dashboard', style: TextStyles.title),
            SizedBox(height: Spacing.md),
            SizedBox(
              width: 200,
              height: 200,
              child: BentoCard(
                icon: Icons.analytics,
                title: 'Users',
                value: '1,250',
              ),
            ),
            const SizedBox(height: Spacing.md),
            const SizedBox(
              width: 320,
              child: ProfileCard(
                name: 'Flutter Sensei',
                subtitle: 'Building Beautiful Interfaces',
              ),
            ),
            const SizedBox(height: Spacing.md),
            const Text('Last updated 5 minutes ago', style: TextStyles.caption),
          ],
        ),
      ),
    );
  }
}
