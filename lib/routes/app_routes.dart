import 'package:flutter/material.dart';
import 'package:ui_engineering/screens/home_screen.dart';
import 'package:ui_engineering/screens/product_screen.dart';
import 'package:ui_engineering/screens/profile_screen.dart';
import 'package:ui_engineering/screens/settings_screen.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/': (context) => const HomeScreen(),
    '/products': (context) => const ProductScreen(),
    '/profile': (context) => const ProfileScreen(),
    '/settings': (context) => const SettingsScreen(),
  };
}
