import 'dart:ui';
import 'package:flutter/material.dart';

class ConfirmarIdentidadeScreen extends StatefulWidget {
  const ConfirmarIdentidadeScreen({super.key});

  @override
  State<ConfirmarIdentidadeScreen> createState() =>
      _ConfirmarIdentidadeScreenState();
}

class _ConfirmarIdentidadeScreenState extends State<ConfirmarIdentidadeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: -80,
            right: -80,
            child: ClipOval(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF36868),
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Colors.red.withValues(alpha: 5),
                        Colors.red.withValues(alpha: 0.0),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 50,
                    horizontal: 24,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios_new, color: Colors.red),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'CONFIRAÇÃO \nDE IDENTIDADE',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 6,
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'BAZAR',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/identidade.png',
                    width: MediaQuery.of(context).size.width * 0.7,
                  ),
                ),
                GestureDetector(
                  child: Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 231, 228, 228),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Parte Frontal',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 34, 34, 34),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.arrow_circle_up_sharp,
                          color: const Color.fromARGB(255, 90, 89, 89),
                          size: 26,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  child: Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 231, 228, 228),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Parte Traseira',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 34, 34, 34),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.arrow_circle_up_sharp,
                          color: const Color.fromARGB(255, 90, 89, 89),
                          size: 26,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  child: Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEA8686),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Submeter',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 34, 34, 34),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
