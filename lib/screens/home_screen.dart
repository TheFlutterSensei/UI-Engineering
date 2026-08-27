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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(Spacing.lg),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Name'),
                validator: (value) {
                  return Validators.checkRequired(value, 'your name');
                },
              ),
              const SizedBox(height: Spacing.md),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                validator: Validators.checkEmail,
              ),
              const SizedBox(height: Spacing.md),
              ElevatedButton(
                onPressed: () {
                  final isValid = _formKey.currentState!.validate();
                  if (isValid) {
                    print('Form is valid');
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
