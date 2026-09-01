import 'package:flutter/material.dart';
import 'package:ui_engineering/constants/spacing.dart';
import 'package:ui_engineering/widgets/interests_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const List<String> _interests = [
    'Flutter',
    'Firebase',
    'UI Design',
    'Dart',
  ];

  final Set<String> _selectedInterests = {};

  void _toggleInterest(String interest) {
    setState(() {
      if (_selectedInterests.contains(interest)) {
        _selectedInterests.remove(interest);
      } else {
        _selectedInterests.add(interest);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI Engineering')),
      body: Padding(
        padding: const EdgeInsets.all(Spacing.md),
        child: InterestsSection(
          interests: _interests,
          selectedInterests: _selectedInterests,
          onInterestChanged: _toggleInterest,
        ),
      ),
    );
  }
}
