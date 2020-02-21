import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  final Color color;
  final String text;

  Badge({this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 3,
      ),
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Text(
        this.text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
