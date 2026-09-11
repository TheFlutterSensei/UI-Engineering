import 'package:flutter/material.dart';

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

    _tabController = TabController(length: 3, vsync: this);
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
          tabs: const [
            Tab(text: 'Popular'),
            Tab(text: 'New'),
            Tab(text: 'Sale'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(child: Text('Popular Products')),
          Center(child: Text('New Products')),
          Center(child: Text('Sale Products')),
        ],
      ),
    );
  }
}
