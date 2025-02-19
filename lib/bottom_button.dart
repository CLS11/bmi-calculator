import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    required this.onTap,
    required this.buttonTitle,
    super.key,
  });

  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: const Color(0xFFEB1555),
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: 80,
        child: Center(
          child: Text(
            buttonTitle,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
