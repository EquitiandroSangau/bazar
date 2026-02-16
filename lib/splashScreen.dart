import 'package:flutter/material.dart';
import 'onBoardding.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BazarHomePage(),
    );
  }
}

class BazarHomePage extends StatefulWidget {
  const BazarHomePage({super.key});


  @override
  State<BazarHomePage> createState() => _BazarHomePage();
}

class _BazarHomePage extends State<BazarHomePage> {
  @override
  void initState() {
    super.initState();

    // Espera 3 segundos e vai para Onboarding
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF3131),
      body: Center(
        child: Image.asset(
          'assets/images/splash.png',
          width: MediaQuery.of(context).size.width * 0.8,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
