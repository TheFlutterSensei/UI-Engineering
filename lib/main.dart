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

Please inspect the current project and review our navigation setup.

We currently have:

- Named routes
- An AppRoutes class
- A central route map
- Route name constants such as AppRoutes.products
- Navigator.pushNamed() for navigation

Do not modify any files.
Do not add any packages.

Explain:

1. Why named routes can be useful in a Flutter application.
2. Why keeping routes in a central route map can make navigation easier to manage.
3. Why using constants such as AppRoutes.products is better than repeatedly typing '/products'.
4. What problems could appear if a larger application scattered route strings throughout many files.

Use our actual project structure in your explanation.
Keep the explanation practical and beginner-friendly.
 */
