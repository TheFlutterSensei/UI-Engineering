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
        child: SizedBox(
          width: 350,
          child: AspectRatio(
            aspectRatio: 3 / 2,
            child: Image.network(
              'https://picsum.photos/600/400',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
