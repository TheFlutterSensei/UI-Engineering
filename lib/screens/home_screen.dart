import 'package:flutter/material.dart';
import 'package:ui_engineering/widgets/stat_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            StatCard(icon: Icons.people, title: 'People', value: '12,450'),
            const SizedBox(height: 16),
            StatCard(icon: Icons.shopping_cart, title: 'Orders', value: '856'),
            const SizedBox(height: 16),
            StatCard(
              icon: Icons.attach_money,
              title: 'Revenue',
              value: '\$24,500',
            ),
          ],
        ),
      ),
    );
  }
}
