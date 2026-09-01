import 'package:flutter/material.dart';
import 'package:ui_engineering/constants/spacing.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? _selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(Spacing.lg),
        child: Form(
          child: Column(
            children: [
              DropdownButtonFormField(
                initialValue: _selectedCountry,
                decoration: const InputDecoration(labelText: 'Country'),
                items: const [
                  DropdownMenuItem(value: 'india', child: Text('India')),
                  DropdownMenuItem(value: 'usa', child: Text('USA')),
                  DropdownMenuItem(value: 'uk', child: Text('UK')),
                  DropdownMenuItem(value: 'canada', child: Text('Canad')),
                ],
                onChanged: (value) {
                  setState(() {
                    _selectedCountry = value;
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
