import 'package:flutter/material.dart';
import 'package:ui_engineering/constants/form_field_design.dart';
import 'package:ui_engineering/constants/spacing.dart';
import 'package:ui_engineering/data/products.dart';
import 'package:ui_engineering/widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(Spacing.md),
            child: TextField(
              decoration: FormFieldDesign.textFieldDesign.copyWith(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search, size: 16),
              ),
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
            ),
          ),

          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(Spacing.md),
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250,
                childAspectRatio: 0.8,
                mainAxisSpacing: Spacing.md,
                crossAxisSpacing: Spacing.md,
              ),
              itemBuilder: (context, index) {
                final product = products[index];

                return ProductCard(product: product);
              },
            ),
          ),
        ],
      ),
    );
  }
}
