import 'package:flutter/material.dart';
import 'package:ui_engineering/constants/breakpoints.dart';
import 'package:ui_engineering/constants/spacing.dart';

class ResponsiveProfile extends StatelessWidget {
  const ResponsiveProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < Breakpoints.mobile) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 40,
                child: Icon(Icons.person, size: 40),
              ),
              const SizedBox(height: Spacing.md),
              const Text(
                'Alex Morgan',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text('UI Engineer', style: TextStyle(color: Colors.grey)),
            ],
          );
        } else {
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 40,
                child: Icon(Icons.person, size: 40),
              ),
              const SizedBox(width: Spacing.md),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Alex Morgan',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('UI Engineer', style: TextStyle(color: Colors.grey)),
                ],
              ),
            ],
          );
        }
      },
    );
  }
}
