import 'package:flutter/material.dart';
import 'package:ui_engineering/constants/spacing.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime? _selectedDate;
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
              Wrap(
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      final selectedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2030),
                      );

                      if (selectedDate != null) {
                        setState(() {
                          _selectedDate = selectedDate;
                        });
                      }
                    },
                    child: const Text('Select Date'),
                  ),
                  SizedBox(width: Spacing.md),
                  ElevatedButton(
                    onPressed: () async {
                      final selectTime = await showTimePicker(
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

                      if (selectTime != null) {
                        setState(() {
                          _selectedTime = selectTime;
                        });
                      }
                    },
                    child: const Text('Select Time'),
                  ),
                ],
              ),

              SizedBox(height: Spacing.lg),

              if (_selectedDate != null && _selectedTime != null)
                Text(
                  'Scheduled for ${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year} '
                  'at ${_selectedTime!.hourOfPeriod}:${_selectedTime!.minute} ${_selectedTime!.period == DayPeriod.am ? 'AM' : 'PM'}',
                ),
            ],
          ),
        ),
      ),
    );
  }
}
