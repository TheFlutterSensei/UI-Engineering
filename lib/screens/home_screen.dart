import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? _paymentMethod;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            RadioGroup<String>(
              groupValue: _paymentMethod,
              onChanged: (value) {
                setState(() {
                  _paymentMethod = value;
                });
              },
              child: Column(
                children: [
                  RadioListTile<String>(
                    title: const Text('Credit Card'),
                    value: 'card',
                  ),
                  RadioListTile<String>(title: const Text('UPI'), value: 'upi'),
                  RadioListTile<String>(
                    title: const Text('Cash'),
                    value: 'cash',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
