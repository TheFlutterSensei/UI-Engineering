import 'package:flutter/material.dart';
import 'package:ui_engineering/widgets/bento_card.dart';
import 'package:ui_engineering/constants/spacing.dart';
import 'package:ui_engineering/constants/breakpoints.dart';
import 'package:ui_engineering/widgets/responsive_profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const Center(child: ResponsiveProfile()));
  }
}
