import 'package:flutter/material.dart';
import 'package:ui_engineering/constants/spacing.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _nameController = TextEditingController();
  bool _hasUnsavedChanges = false;
  bool _allowPop = false;
  bool _isShowingDiscardDialog = false;

  Future<void> _leaveScreen() async {
    setState(() {
      _allowPop = true;
    });

    // PopScope must rebuild with canPop enabled before this programmatic pop.
    await WidgetsBinding.instance.endOfFrame;
    if (mounted) {
      Navigator.of(context).pop();
    }
  }

  Future<void> _showDiscardDialog() async {
    if (_isShowingDiscardDialog) return;
    _isShowingDiscardDialog = true;

    final shouldDiscard = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Discard Changes?'),
          content: const Text(
            'Your changes will be lost if you leave this screen',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              child: const Text('Stay'),
            ),
            FilledButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: const Text('Discard'),
            ),
          ],
        );
      },
    );

    _isShowingDiscardDialog = false;

    if (shouldDiscard == true && mounted) {
      await _leaveScreen();
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: _allowPop || !_hasUnsavedChanges,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop && _hasUnsavedChanges) {
          _showDiscardDialog();
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Edit Profile')),
        body: Padding(
          padding: const EdgeInsets.all(Spacing.md),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(labelText: 'Name'),
                  onChanged: (value) {
                    setState(() {
                      _hasUnsavedChanges = value.isNotEmpty;
                    });
                  },
                ),
              ),
              SizedBox(height: Spacing.md),
              ElevatedButton(
                onPressed: _leaveScreen,
                child: const Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
