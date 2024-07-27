import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const VogueCloneApp());
}

class VogueCloneApp extends StatelessWidget {
  const VogueCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vogue Clone',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'Vogue',
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          displayMedium: TextStyle(
            fontFamily: 'Vogue',
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: TextStyle(
            fontFamily: 'Vogue',
            fontSize: 16,
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Vogue',
            fontSize: 14,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
