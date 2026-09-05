import 'package:flutter/material.dart';
import 'package:ui_engineering/constants/form_field_design.dart';
import 'package:ui_engineering/constants/spacing.dart';
import 'package:ui_engineering/validators/validators.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up to Get Started'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(Spacing.lg),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUnfocus,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: FormFieldDesign.textFieldDesign.copyWith(
                  labelText: 'Your Name',
                ),
                validator: (value) =>
                    Validators.checkRequired(value, 'Your name'),
              ),
              SizedBox(height: Spacing.sm),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: FormFieldDesign.textFieldDesign.copyWith(
                  labelText: 'Your Email ID',
                ),
                validator: (value) => Validators.checkEmail(value),
              ),
              SizedBox(height: Spacing.sm),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: FormFieldDesign.textFieldDesign.copyWith(
                  labelText: 'Your Phone Number',
                ),
                validator: (value) =>
                    Validators.checkRequired(value, 'your Phone Number'),
              ),
              SizedBox(height: Spacing.sm),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    _formKey.currentState!.validate();
                  },
                  child: Text('Sign up'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
