import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, price;
  final List<String> images;
  final bool isFavourite;

  Product({
    @required this.id,
    @required this.images,
    this.isFavourite = false,
    @required this.title,
    @required this.price,
  });
}

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/Popular 1.png",
    ],
    title: "DualSense™ wireless controller for PS5™",
    price: "1.350.000",
  ),
  Product(
    id: 2,
    images: [
      "assets/images/Popular 2.png",
    ],
    title: "Nvidia GeForce RTX™ 3080 Founder Edition",
    price: "22.000.000",
    isFavourite: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/Popular 3.png",
    ],
    title: "Razer™ Viper Ultimate",
    price: "2.399.000",
    isFavourite: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/Popular 4.png",
    ],
    title: "Iphone™ 12 Product (RED)™",
    price: "12.060.000",
  ),
  Product(
    id: 5,
    images: [
      "assets/images/Popular 5.png",
    ],
    title: "Xbox™ Series S",
    price: "4.400.000",
    isFavourite: true,
  ),
  Product(
    id: 6,
    images: [
      "assets/images/Popular 6.png",
    ],
    title: "Samsung™ Note 20 Ultra",
    price: "17.999.000",
    isFavourite: true,
  ),
];
