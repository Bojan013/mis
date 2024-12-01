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
  List<ClothingItem> clothingItems = [
    ClothingItem(id: 1, name: "Shirt 1", img: "https://cdn1.vectorstock.com/i/1000x1000/72/40/t-shirt-sign-icon-clothes-symbol-vector-11157240.jpg", description: "A cool cotton shirt.\n \n Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", price: '\$19.99'),
    ClothingItem(id: 2, name: "Shirt 2", img: "https://cdn1.vectorstock.com/i/1000x1000/72/40/t-shirt-sign-icon-clothes-symbol-vector-11157240.jpg", description: "A formal shirt.\n \n Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", price: "\$25.50"),
    ClothingItem(id: 3, name: "Pants 1", img: "https://cdn1.vectorstock.com/i/1000x1000/72/40/t-shirt-sign-icon-clothes-symbol-vector-11157240.jpg", description: "Comfortable jeans.\n \n Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", price: "\$40.00"),
    ClothingItem(id: 4, name: "Jacket 1", img: "https://cdn1.vectorstock.com/i/1000x1000/72/40/t-shirt-sign-icon-clothes-symbol-vector-11157240.jpg", description: "Stylish leather jacket.\n \n Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", price: "\$80.00"),
    ClothingItem(id: 5, name: "Shoes 1", img: "https://cdn1.vectorstock.com/i/1000x1000/72/40/t-shirt-sign-icon-clothes-symbol-vector-11157240.jpg", description: "Running shoes.\n \n Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", price: "\$60.00"),
    ClothingItem(id: 6, name: "Shoes 2", img: "https://cdn1.vectorstock.com/i/1000x1000/72/40/t-shirt-sign-icon-clothes-symbol-vector-11157240.jpg", description: "Casual sneakers.\n \n Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", price: "\$50.00"),
    ClothingItem(id: 7, name: "Hat 1", img: "https://cdn1.vectorstock.com/i/1000x1000/72/40/t-shirt-sign-icon-clothes-symbol-vector-11157240.jpg", description: "Summer hat.\n \n Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", price: "\$15.00"),
    ClothingItem(id: 8, name: "Scarf 1", img: "https://cdn1.vectorstock.com/i/1000x1000/72/40/t-shirt-sign-icon-clothes-symbol-vector-11157240.jpg", description: "Woolen scarf.\n \n Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", price: "\$20.00"),
    ClothingItem(id: 9, name: "Sweater 1", img: "https://cdn1.vectorstock.com/i/1000x1000/72/40/t-shirt-sign-icon-clothes-symbol-vector-11157240.jpg", description: "Warm sweater.\n \n Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", price: "\$30.00"),
    ClothingItem(id: 10, name: "Socks 1", img: "https://cdn1.vectorstock.com/i/1000x1000/72/40/t-shirt-sign-icon-clothes-symbol-vector-11157240.jpg", description: "Comfortable cotton socks.\n \n Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", price: "\$5.00"),
    ClothingItem(id: 11, name: "Socks 2", img: "https://cdn1.vectorstock.com/i/1000x1000/72/40/t-shirt-sign-icon-clothes-symbol-vector-11157240.jpg", description: "Comfortable cotton socks.\n \n Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", price: "\$5.00"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context),
      body: HomeMainGrid(clothingItems: clothingItems),
    );
  }
}
