import 'package:flutter/material.dart';
import 'package:ui_engineering/constants/spacing.dart';
import 'package:ui_engineering/routes/app_routes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Settings Screen')),
          SizedBox(height: Spacing.md),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.tabs);
            },
            child: const Text('Open Tabs'),
          ),
        ],
      ),
    );
  }
}
