import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          textBaseline: TextBaseline.alphabetic,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            const Text('\$', style: TextStyle(fontSize: 20)),
            const Text(
              '24',
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const Text('.99', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
