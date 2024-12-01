import 'package:flutter/material.dart';

class DetailsPrice extends StatelessWidget {
  final String price;

  const DetailsPrice({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        price,
        style: const TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
