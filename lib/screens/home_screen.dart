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
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                color: Colors.teal,
                shape: BoxShape.circle,
              ),
            ),

            Positioned(
              right: -4,
              bottom: -4,
              child: FloatingActionButton.small(
                onPressed: () {},
                child: const Icon(Icons.edit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
