import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mis/models/clothing_item.dart';

class HomeClothingCard extends StatefulWidget {
  final ClothingItem clothingItem;

  const HomeClothingCard({super.key, required this.clothingItem});

  @override
  _HomeClothingCard createState() => _HomeClothingCard();
}

class _HomeClothingCard extends State<HomeClothingCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black12,
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.network(
              widget.clothingItem.img,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.clothingItem.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              widget.clothingItem.price,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
