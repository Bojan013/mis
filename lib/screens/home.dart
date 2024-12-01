import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        backgroundColor: Colors.blue, // Background color of the AppBar
        centerTitle: true, // Centers the text in the AppBar
      ),
      // body: ,
    );
  }
}
