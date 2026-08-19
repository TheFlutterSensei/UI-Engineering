import 'package:flutter/material.dart';
import 'package:ui_engineering/widgets/bento_card.dart';
import 'package:ui_engineering/constants/spacing.dart';
import 'package:ui_engineering/constants/breakpoints.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          int columns = 2;
          if (width < Breakpoints.mobile) {
            columns = 2;
          } else if (width < Breakpoints.tablet) {
            columns = 3;
          } else {
            columns = 4;
          }

          return GridView.count(
            padding: EdgeInsets.all(Spacing.md),
            mainAxisSpacing: Spacing.md,
            crossAxisSpacing: Spacing.md,
            crossAxisCount: columns,
            children: [
              BentoCard(icon: Icons.analytics, title: 'Users', value: '1,250'),
              BentoCard(icon: Icons.analytics, title: 'Users', value: '1,250'),
              BentoCard(icon: Icons.analytics, title: 'Users', value: '1,250'),
              BentoCard(icon: Icons.analytics, title: 'Users', value: '1,250'),
              BentoCard(icon: Icons.analytics, title: 'Users', value: '1,250'),
              BentoCard(icon: Icons.analytics, title: 'Users', value: '1,250'),
            ],
          );
        },
      ),
    );
  }
}
