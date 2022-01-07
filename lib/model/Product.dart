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
      title: "Detergen Attack",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/attack.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "SoKlin - Bio-Matic",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/so_klin.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Downy",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/downy.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Molto",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/molto.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Sabun Cair Detol",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/detol.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Sabun Cair Giv",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/giv.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
