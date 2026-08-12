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
    return Scaffold(
      body: Center(
        child: Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            StatCard(icon: Icons.people, title: 'People', value: '12,450'),

            StatCard(icon: Icons.shopping_cart, title: 'Orders', value: '856'),

            StatCard(
              icon: Icons.attach_money,
              title: 'Revenue',
              value: '\$24,500',
            ),

            StatCard(
              icon: Icons.inventory_2,
              title: 'Products',
              value: '1,240',
            ),
          ],
        ),
      ),
    );
  }
}
