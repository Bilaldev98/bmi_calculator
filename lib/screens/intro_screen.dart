import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'input_page.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  Future<void> _completeIntro(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('intro_seen', true);

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const InputPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E21),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.monitor_weight, size: 120, color: Colors.pinkAccent),
              const SizedBox(height: 20),
              const Text(
                "Welcome to BMI Calculator",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                "Easily calculate your Body Mass Index (BMI) and get health tips based on your results.\n\n"
                    "• Track if you are Underweight, Normal, or Overweight.\n"
                    "• Get personalized health advice.\n"
                    "• Take the first step toward a healthier lifestyle!",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () => _completeIntro(context),
                child: const Text(
                  "Get Started",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
