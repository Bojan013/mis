import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mis/models/clothing_item.dart';
import 'package:mis/widgets/details_description.dart';
import 'package:mis/widgets/details_image.dart';
import 'package:mis/widgets/details_price.dart';
import 'package:mis/widgets/details_title.dart';
import 'package:mis/widgets/myAppBar.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as ClothingItem;
    return Scaffold(
      appBar: myAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DetailsImage(image: item.img),
            DetailsTitle(title: item.name),
            DetailsPrice(price: item.price),
            DetailsDescription(description: item.description),
          ],
        ),
      ),
    );
  }
}
