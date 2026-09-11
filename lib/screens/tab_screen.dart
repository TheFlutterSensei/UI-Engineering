import 'package:flutter/material.dart';
import 'package:ui_engineering/constants/spacing.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          padding: const EdgeInsets.symmetric(horizontal: Spacing.sm),
          labelPadding: const EdgeInsets.symmetric(horizontal: Spacing.md),
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: const EdgeInsets.symmetric(vertical: Spacing.xs),
          indicator: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(Spacing.lg),
          ),
          labelColor: Theme.of(context).colorScheme.onPrimary,
          unselectedLabelColor: Theme.of(context).colorScheme.onSurfaceVariant,
          tabs: const [
            Tab(text: 'Popular'),
            Tab(text: 'New'),
            Tab(text: 'Sale'),
            Tab(text: 'Electronics'),
            Tab(text: 'Clothing'),
            Tab(text: 'Books'),
            Tab(text: 'Games'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildProductList('Popular'),
          _buildProductList('New'),
          _buildProductList('Sale'),
          _buildProductList('Electronics'),
          _buildProductList('Clothing'),
          _buildProductList('Books'),
          _buildProductList('Games'),
        ],
      ),
    );
  }
}

Widget _buildProductList(String category) {
  return ListView.builder(
    padding: const EdgeInsets.all(Spacing.md),
    itemCount: 10,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text('$category Product ${index + 1}'),
        subtitle: Text('This is a $category product.'),
      );
    },
  );
}
