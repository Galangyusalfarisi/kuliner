import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Rendang",
      price: 15000,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: Colors.orangeAccent),
  Product(
      id: 2,
      title: "Soto ayam",
      price: 10000,
      size: 8,
      description: dummyText,
      image: "assets/images/bag_2.png",
      color: Colors.orangeAccent),
  Product(
      id: 3,
      title: "Nasi goreng",
      price: 12000,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: Colors.orangeAccent),
  Product(
      id: 4,
      title: "Batagor",
      price: 5000,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: Colors.orangeAccent),
  Product(
      id: 5,
      title: "Pempek",
      price: 8000,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: Colors.orangeAccent),
  Product(
    id: 6,
    title: "Gulai ikan",
    price: 15000,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: Colors.orangeAccent,
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
