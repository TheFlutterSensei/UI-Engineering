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

Please inspect the existing project and improve the current product
search and filtering implementation.

The project already has:

- A Product model
- A products data list
- A search TextField
- A _searchQuery variable
- A _filteredProducts getter
- A GridView.builder
- A "No products found" empty state
- Case-insensitive product name searching

Requirements:

- Keep the existing project structure.
- Keep using the existing Product model and products data.
- Keep GridView.builder.
- Keep the existing spacing constants.
- Keep searching by product name.
- Keep the search case-insensitive.
- Keep the existing empty search state.
- Improve the filtering logic only where it makes sense.
- Do not add external packages.
- Keep the code simple and readable.

Before making changes, briefly explain your approach.
Then implement the changes.
 */
