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
 * Prompt:
 * 
Inspect the current navigation architecture of this Flutter project.

Focus on the actual implementation in:

- MainScreen
- HomeScreen
- ProductScreen
- ProfileScreen
- SettingsScreen
- EditProfileScreen
- TabScreen
- AppRoutes
- PopScope usage
- Product model
- Product URLs

Compare the navigation approaches currently used in the project:

1. Navigator.push with MaterialPageRoute
2. Named routes
3. Bottom navigation with IndexedStack
4. TabBar and TabBarView
5. PopScope for back-navigation control
6. Product URLs as preparation for deep linking

For each approach:

- Explain where we are currently using it.
- Explain why it fits that particular situation.
- Mention its main advantage.
- Mention any limitation we should be aware of.

Then compare the approaches against each other.

Finally, review the current project and recommend whether we should keep this mixed navigation approach or move toward a different routing strategy as the app grows.

Do not rewrite the navigation architecture.
Do not add packages.
Do not change any code.

This is a review only.

Keep the recommendations practical and specific to this project.
 */
