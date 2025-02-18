import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({required this.icon, required this.label, super.key});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 80),
          const SizedBox(height: 15),
          Text(
            label,
            style: const TextStyle(fontSize: 15, color: Color(0xFF8D8E98)),
          ),
        ],
      ),
    );
  }
}
