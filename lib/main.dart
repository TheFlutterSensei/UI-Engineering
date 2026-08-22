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
We are building a Flutter UI engineering project with an existing design system.

Create a reusable ProfileCard widget inside:

lib/widgets/profile_card.dart

The card should contain:

- A circular user avatar on the left.
- The user's name.
- A short subtitle.
- A small action button on the right.

Use Row and Column for the layout.

Use Expanded where appropriate so the text does not cause overflow.

IMPORTANT:

Use the existing design system from:

lib/constants/spacing.dart
lib/constants/text_styles.dart
lib/constants/colors.dart

Do not create new spacing values, font sizes, or colors unless absolutely necessary.

Use:
- Spacing values for padding and gaps.
- TextStyles for typography.
- AppColors for colors.

Make the widget reusable by accepting:
- name
- subtitle

as constructor parameters.

Do not add any external packages.

After creating the widget, add it to HomeScreen and run the Flutter project.

Fix any errors you encounter.

Do not modify unrelated files.
 */
