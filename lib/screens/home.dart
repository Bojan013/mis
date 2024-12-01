import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mis/models/clothing_item.dart';
import 'package:mis/widgets/home_main_grid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<ClothingItem> clothingItems = List.generate(
    11,
        (index) => ClothingItem(
      id: index + 1,
      name: 'Clothing Item ${index + 1}',
      img: 'https://via.placeholder.com/150', // Placeholder image URL
      description: 'Description for item ${index + 1}',
      price: '\$${(index + 1) * 10}',
    ),
  );

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
        backgroundColor: Colors.black87, // Background color of the AppBar
        centerTitle: true, // Centers the text in the AppBar
      ),
      body: HomeMainGrid(clothingItems: clothingItems),

    );
  }
}
