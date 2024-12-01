import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mis/models/clothing_item.dart';

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
            child: Card(
              color: Colors.black12,
              elevation: 4.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.network(
                      item.img,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      item.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      item.price,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
