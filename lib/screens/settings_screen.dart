import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui_engineering/constants/form_field_design.dart';
import 'package:ui_engineering/constants/spacing.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool notificationsEnabled = true;

  final TextEditingController userNameController = TextEditingController();
  String username = '';

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    final savedValue = prefs.getBool('notifications_enabled');
    final savedUsername = prefs.getString('username');

    if (savedValue != null && mounted) {
      setState(() {
        notificationsEnabled = savedValue;
      });
    }

    if (savedUsername != null && mounted) {
      setState(() {
        username = savedUsername;
        userNameController.text = savedUsername;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  @override
  void dispose() {
    userNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(Spacing.md),
            child: TextField(
              controller: userNameController,
              decoration: FormFieldDesign.textFieldDesign.copyWith(
                labelText: 'Profile Name',
              ),
              onChanged: (value) async {
                username = value;

                final prefs = await SharedPreferences.getInstance();
                await prefs.setString('username', value);
              },
            ),
          ),
          SwitchListTile(
            title: const Text('Enable Notifications'),
            value: notificationsEnabled,
            onChanged: (value) async {
              setState(() {
                notificationsEnabled = value;
              });

              final prefs = await SharedPreferences.getInstance();
              prefs.setBool('notifications_enabled', value);
            },
          ),
        ],
      ),
    );
  }
}
