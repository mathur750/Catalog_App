import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CatalogModel {
  static List items = [
    Item(
      id: "1",
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12th generation",
      price: 999,
      color: "#35505a",
      image:
          "https://i0.wp.com/www.smartprix.com/bytes/wp-content/uploads/2023/02/10-photoutils.com_.jpeg?ssl=1", // Added a placeholder image URL
    ),
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,
  });

  factory Item.fromMap(Map<String, dynamic> Map) {
    return Item(
      id: Map["id"],
      name: Map["name"],
      desc: Map["desc"],
      price: Map["price"],
      color: Map["color"],
      image: Map["image"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}
