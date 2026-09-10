import 'package:flutter/material.dart';
import 'package:ui_engineering/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Engineering',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
        brightness: Brightness.light,
      ),
      routes: AppRoutes.routes,
    );
  }
}
/**
 * Prompt:
 * 
We are building a Flutter UI Engineering course project.

Please inspect the existing project and improve the current product
navigation into a complete product detail flow.

The project already has:

- A Product model
- A product grid
- A reusable ProductCard widget
- A ProductScreen
- AppRoutes for application routes
- Product navigation using Navigator.push()
- ProductScreen receiving a Product through its constructor

Requirements:

- Keep the existing Product model.
- Keep the existing ProductCard widget.
- Keep the existing product grid.
- Keep the existing spacing constants.
- When a product card is tapped, open ProductScreen.
- Pass the selected Product object to ProductScreen through its constructor.
- Display the product image, name, description, and formatted price.
- Use the existing project structure.
- Do not add external packages.
- Keep the implementation simple and readable.
- Do not create separate detail screens for individual products.

Before making changes, briefly explain your approach.
Then implement the product detail flow.

After making the changes, briefly explain which files you modified.
 */
