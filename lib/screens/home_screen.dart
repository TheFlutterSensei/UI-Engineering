import 'package:flutter/material.dart';
import 'package:ui_engineering/widgets/profile_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /**
 * 

Prompt:

Using the existing project structure, create a reusable ProfileHeader widget in:

lib/widgets/profile_header.dart

Build a compact profile header with:

- A circular profile image on the left.
- A small edit button positioned over the bottom-right of the image.
- The user's name and a short subtitle beside the image.
- A small action icon on the right.
- Use Stack and Positioned for the profile image and edit button.
- Use Row and Column for the overall layout.
- Use MainAxisSize.min where appropriate for compact sections.
- Keep the widget reusable by accepting the name and subtitle as constructor parameters.
- Use a reasonable placeholder network image.
- Keep the implementation simple and clean.
- Do not add any external packages.
- After creating the widget, update HomeScreen to display it.
- Run the Flutter project and fix any errors you encounter.

Do not modify unrelated files.
 */
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: const ProfileHeader(
            name: 'Alex Morgan',
            subtitle: 'Product Designer',
          ),
        ),
      ),
    );
  }
}
