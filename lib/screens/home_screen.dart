import 'package:flutter/material.dart';
import 'package:ui_engineering/constants/form_field_design.dart';
import 'package:ui_engineering/constants/spacing.dart';
import 'package:ui_engineering/constants/text_styles.dart';
import 'package:ui_engineering/data/products.dart';
import 'package:ui_engineering/models/product.dart';
import 'package:ui_engineering/widgets/product_card.dart';
import 'package:ui_engineering/widgets/product_skeleton_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isLoading = true;
  String _searchQuery = '';

  List<Product> get _filteredProducts {
    final normalizedQuery = _searchQuery.trim().toLowerCase();

    if (normalizedQuery.isEmpty) {
      return products;
    }

    return products
        .where(
          (product) => product.name.toLowerCase().contains(normalizedQuery),
        )
        .toList();
  }

  Future<void> _loadProducts() async {
    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();

    _loadProducts();
  }

  @override
  Widget build(BuildContext context) {
    final filteredProducts = _filteredProducts;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(Spacing.md),
              child: TextField(
                decoration: FormFieldDesign.textFieldDesign.copyWith(
                  hintText: 'Search products',
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
              child: filteredProducts.isEmpty
                  ? const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('No Products Found', style: TextStyles.title),
                          SizedBox(height: Spacing.sm),
                          Text(
                            'Try searching for something else.',
                            style: TextStyles.body,
                          ),
                        ],
                      ),
                    )
                  : _isLoading
                  ? GridView.builder(
                      padding: const EdgeInsets.all(Spacing.md),
                      itemCount: 6,
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 250,
                            childAspectRatio: 0.8,
                            mainAxisSpacing: Spacing.md,
                            crossAxisSpacing: Spacing.md,
                          ),
                      itemBuilder: (context, index) {
                        return const ProductSkeletonCard();
                      },
                    )
                  : RefreshIndicator(
                      onRefresh: () async {
                        setState(() {
                          _isLoading = true;
                        });
                        await _loadProducts();
                      },
                      child: GridView.builder(
                        padding: EdgeInsets.all(Spacing.md),
                        itemCount: filteredProducts.length,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 250,
                          childAspectRatio: 0.8,
                          mainAxisSpacing: Spacing.md,
                          crossAxisSpacing: Spacing.md,
                        ),
                        itemBuilder: (context, index) {
                          final product = filteredProducts[index];

                          return ProductCard(product: product);
                        },
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
