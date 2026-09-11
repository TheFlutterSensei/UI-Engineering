import 'package:flutter/material.dart';
import 'package:ui_engineering/screens/edit_profile_screen.dart';
// import 'package:ui_engineering/screens/home_screen.dart';
// import 'package:ui_engineering/screens/product_screen.dart';
import 'package:ui_engineering/screens/profile_screen.dart';
import 'package:ui_engineering/screens/settings_screen.dart';
import 'package:ui_engineering/screens/main_screen.dart';
import 'package:ui_engineering/screens/tab_screen.dart';

class AppRoutes {
  static const home = '/';
  static const products = '/products';
  static const profile = '/profile';
  static const settings = '/settings';
  static const tabs = '/tabs';
  static const editProfile = '/edit-profile';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => const MainScreen(),
    // products: (context) => const ProductScreen(),
    profile: (context) => const ProfileScreen(),
    settings: (context) => const SettingsScreen(),
    tabs: (context) => const TabScreen(),
    editProfile: (context) => const EditProfileScreen(),
  };
}
