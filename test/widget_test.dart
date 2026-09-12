import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ui_engineering/models/product.dart';
import 'package:ui_engineering/screens/edit_profile_screen.dart';
import 'package:ui_engineering/screens/product_screen.dart';

Widget _appWithRoute(Widget page) {
  return MaterialApp(
    home: Builder(
      builder: (context) => Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute<void>(builder: (_) => page));
            },
            child: const Text('Open'),
          ),
        ),
      ),
    ),
  );
}

void main() {
  testWidgets('ProductScreen back returns to the previous screen', (
    WidgetTester tester,
  ) async {
    final product = Product(
      name: 'Test product',
      description: 'Description',
      price: 1,
      image: 'https://example.com/product.png',
      url: 'https://example.com/product/1',
    );

    await tester.pumpWidget(_appWithRoute(ProductScreen(product: product)));
    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();

    await tester.tap(find.byTooltip('Back'));
    await tester.pumpAndSettle();

    expect(find.text('Open'), findsOneWidget);
  });

  testWidgets('EditProfileScreen only confirms discard for unsaved changes', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(_appWithRoute(const EditProfileScreen()));
    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'Ada');

    // This is the Android system-back route, which must match the AppBar back.
    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    expect(find.text('Discard Changes?'), findsOneWidget);

    await tester.tap(find.text('Stay'));
    await tester.pumpAndSettle();
    expect(find.text('Edit Profile'), findsOneWidget);

    await tester.binding.handlePopRoute();
    await tester.pumpAndSettle();
    await tester.tap(find.text('Discard'));
    await tester.pumpAndSettle();
    expect(find.text('Open'), findsOneWidget);
  });

  testWidgets('EditProfileScreen Save leaves without a discard dialog', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(_appWithRoute(const EditProfileScreen()));
    await tester.tap(find.text('Open'));
    await tester.pumpAndSettle();
    await tester.enterText(find.byType(TextField), 'Ada');

    await tester.tap(find.text('Save'));
    await tester.pumpAndSettle();

    expect(find.text('Open'), findsOneWidget);
    expect(find.text('Discard Changes?'), findsNothing);
  });
}
