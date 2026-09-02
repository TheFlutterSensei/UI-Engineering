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
      body: Padding(
        padding: const EdgeInsets.all(Spacing.lg),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUnfocus,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(labelText: 'Name'),
                validator: (value) => Validators.checkRequired(value, 'Name'),
              ),
              SizedBox(height: Spacing.md),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (value) => Validators.checkEmail(value),
              ),
              SizedBox(height: Spacing.md),
              ElevatedButton(
                onPressed: () {
                  _formKey.currentState!.validate();
                },
                child: const Text('Check Field'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
