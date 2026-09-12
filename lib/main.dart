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
