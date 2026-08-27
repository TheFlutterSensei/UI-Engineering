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

Create a reusable username validator for our Flutter project.

The username must:

- Be between 3 and 20 characters.
- Contain only letters, numbers, and underscores.
- Not contain spaces or other special characters.

Use RegExp and add the validator to:

lib/validators/validators.dart

The validator should follow the same pattern as our existing
Validators.email and Validators.password methods.

Do not add any external packages.

After implementing it, explain the RegExp pattern you created,
piece by piece, so I can understand what each part does.

 */
