import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontFamily: 'Bokor',
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: Colors.red),
    );
  }
}

class StyledSubText extends StatelessWidget {
  const StyledSubText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontFamily: 'Chenla',
          fontSize: 11,
      ),
    );
  }
}

