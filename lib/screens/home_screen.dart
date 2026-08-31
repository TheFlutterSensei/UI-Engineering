import 'package:flutter/material.dart';
import 'package:ui_engineering/constants/spacing.dart';
import 'package:ui_engineering/validators/validators.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _flutterSelected = false;
  bool _firebaseSelected = false;
  bool _designSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          child: Column(
            children: [
              CheckboxListTile(
                title: const Text('Flutter'),
                value: _flutterSelected,
                onChanged: (value) {
                  setState(() {
                    _flutterSelected = value ?? false;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Firebox'),
                value: _firebaseSelected,
                onChanged: (value) {
                  setState(() {
                    _firebaseSelected = value ?? false;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('UI Design'),
                value: _designSelected,
                onChanged: (value) {
                  setState(() {
                    _designSelected = value ?? false;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
