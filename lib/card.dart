import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    required this.colour, 
    required this.cardChild, 
    required this.onTap, 
    super.key,
    });

  final Color colour;
  final Widget cardChild;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: colour,
          ),
          child: cardChild,
        ),
      ),
    );
  }
}
