import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mis/models/clothing_item.dart';
import 'package:mis/widgets/home_clothing_card.dart';

class HomeMainGrid extends StatefulWidget {
  final List<ClothingItem> clothingItems;

  const HomeMainGrid({super.key, required this.clothingItems});

  @override
  _HomeMainGridState createState() => _HomeMainGridState();
}

class _HomeMainGridState extends State<HomeMainGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0.8,
          mainAxisSpacing: 5,
          childAspectRatio: 0.75,
        ),
        itemCount: widget.clothingItems.length,
        itemBuilder: (context, index) {
          final item = widget.clothingItems[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                '/details',
                arguments: item,
              );
            },
            child: HomeClothingCard(clothingItem: item),
          );
        });
  }
}
