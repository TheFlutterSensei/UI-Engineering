import 'package:flutter/material.dart';
import 'package:ui_engineering/constants/spacing.dart';
import 'package:ui_engineering/validators/validators.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameFocus = FocusNode();

  @override
  void dispose() {
    _nameFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(Spacing.lg),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                focusNode: _nameFocus,
                decoration: const InputDecoration(labelText: 'Name'),
                validator: (value) {
                  return Validators.checkRequired(value, 'Name');
                },
              ),
              SizedBox(height: Spacing.lg),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _formKey.currentState!.validate();
                      _nameFocus.requestFocus();
                    },
                    child: const Text('Focus Name'),
                  ),
                  SizedBox(width: Spacing.md),
                  ElevatedButton(
                    onPressed: () {
                      _nameFocus.unfocus();
                    },
                    child: const Text('Remove Focus'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
