import 'package:flutter/material.dart';
import 'package:ui_engineering/constants/spacing.dart';
import 'package:ui_engineering/constants/text_styles.dart';
import 'package:ui_engineering/data/products.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              child: Padding(
                padding: EdgeInsets.all(Spacing.md),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(products[0].name),
                    Text(products[0].getSummary),
                    Text(products[0].formattedPrice),
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(Spacing.md),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(products[1].name),
                    Text(products[1].getSummary),
                    Text(products[1].formattedPrice),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
