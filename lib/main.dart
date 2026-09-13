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
 * Prompt
 * 
Prettify this JSON and return only the formatted JSON.
{"name":"EcoLite Bamboo Travel Mug","price":24,"available":true,"tags":["eco-friendly","travel"],"discount":null,"url":"https://fluttersensei.com/product/1"}
 */
