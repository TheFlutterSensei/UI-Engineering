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
      body: LayoutBuilder(
        builder: (context, constraints) {
          print(constraints.maxWidth);

          int columns = 2;

          if (constraints.maxWidth > 900) {
            columns = 4;
          } else if (constraints.maxWidth > 600) {
            columns = 3;
          } else {
            columns = 2;
          }

          return GridView.count(
            crossAxisCount: columns,
            padding: const EdgeInsets.all(16),
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: [
              StatCard(icon: Icons.people, title: 'Users', value: '12,450'),
              StatCard(
                icon: Icons.shopping_cart,
                title: 'Orders',
                value: '856',
              ),
              StatCard(
                icon: Icons.attach_money,
                title: 'Revenue',
                value: '\$24,500',
              ),
              StatCard(
                icon: Icons.inventory_2,
                title: 'products',
                value: '1,240',
              ),
            ],
          );
        },
      ),
    );
  }
}
