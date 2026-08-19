import 'package:flutter/material.dart';
import 'package:ui_engineering/widgets/bento_card.dart';
import 'package:ui_engineering/constants/spacing.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(Spacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: BentoCard(
                      icon: Icons.people,
                      title: 'Users',
                      value: '12.4k',
                    ),
                  ),
                  SizedBox(width: Spacing.md),
                  Expanded(
                    child: BentoCard(
                      icon: Icons.shopping_cart,
                      title: 'Orders',
                      value: '856',
                    ),
                  ),
                  SizedBox(width: Spacing.md),
                  Expanded(
                    child: BentoCard(
                      icon: Icons.inventory_2,
                      title: 'Products',
                      value: '1.2k',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Spacing.md),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    child: BentoCard(
                      icon: Icons.analytics,
                      title: 'revenue',
                      value: '\$24,500',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Spacing.md),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: BentoCard(
                      icon: Icons.trending_up,
                      title: 'Growth',
                      value: '+18.25%',
                    ),
                  ),
                  SizedBox(width: Spacing.md),
                  Expanded(
                    child: BentoCard(
                      icon: Icons.star,
                      title: 'Rating',
                      value: '4.9',
                    ),
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
