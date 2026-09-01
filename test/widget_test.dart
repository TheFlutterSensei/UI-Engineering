// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ui_engineering/main.dart';

void main() {
  testWidgets('allows multiple interests to be selected', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('0 interests selected'), findsOneWidget);

    await tester.tap(find.text('Flutter'));
    await tester.pump();

    await tester.tap(find.text('Firebase'));
    await tester.pump();

    expect(find.text('2 interests selected'), findsOneWidget);
  });
}
