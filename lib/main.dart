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
 * Prompt
 * 
We are building a Flutter UI Engineering course project.

Please inspect the current navigation implementation in the project.

Focus on:

- MainScreen
- HomeScreen
- ProductScreen
- AppRoutes
- The NavigationBar
- ProductCard navigation

Review how navigation currently works between the main tabs
and the product detail screen.

Look specifically for practical navigation UX improvements
that would make the application feel more polished.

Do not add any packages.
Do not change the overall navigation architecture.
Do not introduce unnecessary abstractions.

First, list the improvements you recommend.

Then implement only the improvements that are genuinely useful
for the current project.

After making the changes, briefly explain what was changed.
 */
