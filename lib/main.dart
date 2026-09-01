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
Prompt:
We are building a Flutter UI Engineering course project.

Please inspect the existing project structure and build a reusable
multi-select interests section on the HomeScreen.

Requirements:

- Use CheckboxListTile.
- Allow the user to select multiple interests.
- Use these options:
  Flutter
  Firebase
  UI Design
  Dart
- Store the selected interests in a Set<String>.
- Show a text below the checkboxes displaying:
  "3 interests selected"
  using the actual number selected.
- Keep the implementation simple and readable.
- Follow the existing coding style and spacing constants in the project.
- Do not add any external packages.

Before making changes, briefly explain your approach.
Then implement the feature.
 */
