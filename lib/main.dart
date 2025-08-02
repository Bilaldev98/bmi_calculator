import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/intro_screen.dart';
import 'screens/input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF0A0E21),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      home: const SplashScreen(),
      routes: {
        '/intro': (context) => const IntroScreen(),
        '/input': (context) => const InputPage(),
      },
    );
  }
}
