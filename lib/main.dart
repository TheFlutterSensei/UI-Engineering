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
Inspect the current back-navigation flow in this Flutter project.

Focus on:
- MainScreen
- ProductScreen
- EditProfileScreen
- AppRoutes
- PopScope usage
- Navigator.push / Navigator.pop
- Android system back behavior

Review the current implementation specifically for navigation UX and safety.

Look for:
- accidental data loss
- unexpected navigation behavior
- dialogs appearing when they shouldn't
- incorrect PopScope usage
- problems with programmatic Navigator.pop()
- inconsistent behavior between AppBar back and Android system back
- any unnecessary or duplicated navigation logic

Do not rewrite the architecture.
Do not add packages.

First explain any problems you find and why they matter.
Then suggest the smallest practical changes needed.
Only implement changes that are genuinely useful.

After making changes, verify that these flows still work:

1. ProductScreen → Back → returns to previous screen
2. EditProfileScreen with changes → Back → shows discard dialog
3. EditProfileScreen → Stay → remains on screen
4. EditProfileScreen → Discard → returns to previous screen
5. EditProfileScreen → Save → returns without showing the discard dialog
6. Android system back behaves correctly
 */
