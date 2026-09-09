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

Please inspect the current project and explain the scroll behavior
implemented in our product grid.

Focus specifically on:

- The GridView.builder
- The current ScrollPhysics configuration
- BouncingScrollPhysics
- NeverScrollableScrollPhysics

For each one, explain what it does in the context of our
current product grid.

Also explain what would happen visually if we changed the
current physics to ClampingScrollPhysics.

Do not modify any files.
Do not add any packages.
Only inspect the existing code and explain what you find.

Keep the explanation practical and beginner-friendly.
 */
