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
      body: Stack(
        children: [
          Container(width: 300, height: 200, color: Colors.teal),
          const Text(
            'UI Engineering',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          Icon(Icons.star),
        ],
      ),
    );
  }
}
