import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mis/models/clothing_item.dart';
import 'package:mis/widgets/home_main_grid.dart';
import 'package:mis/widgets/myAppBar.dart';

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
      img: 'https://cdn1.vectorstock.com/i/1000x1000/72/40/t-shirt-sign-icon-clothes-symbol-vector-11157240.jpg', // Placeholder image URL
      description: 'Description for itemDescription for itemDescription for itemDescription for itemDescription for itemDescription for itemDescription for itemDescription for itemDescription for itemDescription for item Description for item Description for item ${index + 1}',
      price: '\$${(index + 1) * 10}',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context),
      body: HomeMainGrid(clothingItems: clothingItems),

    );
  }
}
