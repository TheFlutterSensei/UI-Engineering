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

Please inspect the existing ProductSkeletonCard widget and improve it
with a modern skeleton loading animation.

Requirements:

- Keep the existing ProductSkeletonCard widget.
- Keep the current card layout and proportions.
- Keep the existing spacing constants.
- Add a subtle animated loading effect to the skeleton placeholders.
- Use Flutter's built-in animation widgets only.
- Do not add any external packages.
- Keep the implementation simple and readable.
- Do not change the Product model.
- Do not change the product grid.
- Only modify the skeleton loading UI.

Before making changes, briefly explain your approach.
Then implement the changes.
 */
