import 'package:flutter/material.dart';

AppBar myAppBar(BuildContext context){
  return AppBar(
    leading: IconButton(
      icon: const Icon(Icons.home, size: 30,),
      color: Colors.white,
      onPressed: () {
        Navigator.pushNamed(context, '/'); // Navigates to the "/" path
      },
      tooltip: 'Go to Home',
    ),
    title: const Text(
      '211157',
      style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold// Text color
      ),
    ),
    backgroundColor: Colors.black87, // Background color of the AppBar
    centerTitle: true, // Centers the text in the AppBar
  );
}