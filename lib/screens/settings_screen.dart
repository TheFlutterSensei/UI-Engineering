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

  final TextEditingController phoneController = TextEditingController();
  int? phoneNumber;

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    final savedValue = prefs.getBool('notifications_enabled');
    final savedUsername = prefs.getString('username');
    final savedPhone = prefs.getInt('phone');

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

    if (savedPhone != null && mounted) {
      setState(() {
        phoneNumber = savedPhone;
        phoneController.text = savedPhone.toString();
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
    phoneController.dispose();
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
            padding: const EdgeInsets.symmetric(
              horizontal: Spacing.md,
              vertical: Spacing.sm,
            ),
            child: TextField(
              controller: userNameController,
              keyboardType: TextInputType.name,
              decoration: FormFieldDesign.textFieldDesign.copyWith(
                labelText: 'Profile Name',
                prefixIcon: const Icon(Icons.person),
              ),
              onChanged: (value) async {
                username = value;

                final prefs = await SharedPreferences.getInstance();
                await prefs.setString('username', value);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Spacing.md,
              vertical: Spacing.sm,
            ),
            child: TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: FormFieldDesign.textFieldDesign.copyWith(
                labelText: 'Phone Number',
                prefixIcon: const Icon(Icons.phone),
              ),
              onChanged: (value) async {
                final prefs = await SharedPreferences.getInstance();
                if (value.isEmpty) {
                  phoneNumber = null;
                  await prefs.remove('phone');
                  return;
                }
                phoneNumber = int.parse(value);

                await prefs.setInt('phone', int.parse(value));
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
