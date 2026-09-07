import 'package:flutter/material.dart';
import 'package:ui_engineering/screens/home_screen.dart';

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
      home: const HomeScreen(),
    );
  }
}

/**
 * Prompt:
 *
We are building a Flutter UI Engineering course project.

Please inspect the existing project structure and improve the current
product GridView into a more polished e-commerce product grid.

Requirements:

- Use the existing Product model and products data.
- Use GridView.builder.
- Keep the existing responsive grid sizing.
- Display the product image at the top.
- Display the product name.
- Display the product description.
- Display the formatted price.
- Keep the existing spacing constants.
- Create a reusable ProductCard widget if appropriate.
- Keep the UI clean and production-style.
- Do not add any external packages.
- Do not change the Product model unless absolutely necessary.
- Follow the existing project structure and coding style.

Before making changes, briefly explain your approach.
Then implement the changes.
 */
