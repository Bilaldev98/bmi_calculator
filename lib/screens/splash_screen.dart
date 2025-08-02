import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'intro_screen.dart';
import 'input_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigate();
  }

  Future<void> _navigate() async {
    await Future.delayed(const Duration(seconds: 2)); // Splash delay

    final prefs = await SharedPreferences.getInstance();
    final bool introSeen = prefs.getBool('intro_seen') ?? false;

    if (introSeen) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const InputPage()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const IntroScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E21),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Replace the icon with your logo
            Image.asset(
              'assets/splash_screen_img.png', // Make sure this path matches your logo
              width: 150, // Adjust size as needed
            ),
            const SizedBox(height: 20),
            const Text(
              "BMI Calculator",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
