import 'package:flutter/material.dart';
import 'package:ui_engineering/constants/spacing.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TimeOfDay? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(Spacing.lg),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () async {
                  final selectedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                    builder: (context, child) {
                      return MediaQuery(
                        data: MediaQuery.of(
                          context,
                        ).copyWith(alwaysUse24HourFormat: false),
                        child: child!,
                      );
                    },
                  );

                  if (selectedTime != null) {
                    setState(() {
                      _selectedTime = selectedTime;
                    });
                  }
                },
                child: const Text('Select Time'),
              ),

              SizedBox(height: Spacing.lg),

              if (_selectedTime != null) Text(_selectedTime!.format(context)),
            ],
          ),
        ),
      ),
    );
  }
}
