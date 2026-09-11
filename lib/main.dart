import 'package:flutter/material.dart';
import 'package:ui_engineering/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Engineering',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
        brightness: Brightness.light,
      ),
      routes: AppRoutes.routes,
    );
  }
}

/**
 * Prompt:
 * 
We are building a Flutter UI Engineering course project.

Please inspect the current TabScreen implementation.

The screen currently has:

- A TabController with 7 tabs.
- A scrollable TabBar.
- A TabBarView connected to the same TabController.
- Swipe navigation between tab pages.
- A ListView.builder inside each tab.
- Different content for each category.

Please review the current implementation specifically for
scrollable tab UX.

Look for practical improvements such as:

- Tab spacing and sizing
- How the tabs behave when there are many categories
- Whether the selected tab is easy to see
- Whether the TabBar feels comfortable to scroll
- Any unnecessary configuration
- Any simple improvements that would make the interface
  feel more polished

Do not add external packages.

Do not change the overall TabController, TabBar,
or TabBarView architecture.

Do not rewrite the screen unnecessarily.

First, briefly explain the improvements you recommend.

Then implement only the improvements that are genuinely useful.

After making the changes, briefly explain what you changed.
 */
