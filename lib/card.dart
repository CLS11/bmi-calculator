import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({required this.colour, required this.cardChild, super.key});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: colour,
        ),
        child: cardChild,
      ),
    );
  }
}
