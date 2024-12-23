import 'package:flutter/material.dart';
import 'package:calendar_application/login.dart';
import 'package:calendar_application/themes/dark_theme.dart';
import 'package:calendar_application/themes/light_theme.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Theming',
      theme: LightTheme.theme,
      darkTheme: DarkTheme.theme,
      themeMode: ThemeMode.system, // Automatically switch based on system settings
      home:  Login(),
    );
  }
}