import 'package:flutter/material.dart';

class DetailsDescription extends StatelessWidget {
  final String description;

  const DetailsDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        description,
        textAlign: TextAlign.justify,
        style: const TextStyle(
          fontSize: 18.0,
          color: Colors.black54,
        ),
      ),
    );
  }
}
