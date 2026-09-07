import 'package:flutter/material.dart';
import 'package:ui_engineering/models/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final user = User(
    name: 'Flutter Sensei',
    email: 'contact@fluttersensei.com',
    age: 30,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(user.name),
            Text(user.email),
            Text('Age: ${user.age}'),
          ],
        ),
      ),
    );
  }
}
