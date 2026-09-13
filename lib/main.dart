import 'package:flutter/material.dart';
import 'package:ui_engineering/data/products.dart';
import 'package:ui_engineering/routes/app_routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await loadProducts();
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
I'm building a Flutter e-commerce application.

I need packages for:

- Networking
- Local storage
- SVG rendering
- Opening URLs
- State management

Suggest suitable Flutter packages for each requirement.

For each package, explain:
- What it does
- Why I might need it
- Whether it is actively maintained
- Any important drawbacks

Don't recommend a package just because it's popular.
 */

/**
 * Prompt 2:
 * 
Only recommend packages that support Android and iOS.
Prefer actively maintained packages.
Avoid abandoned or deprecated packages.
 */
