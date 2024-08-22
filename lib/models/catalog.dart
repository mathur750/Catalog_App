import 'package:flutter/material.dart';

class CatalogModel {
  static final items = [
    Item(
      id: "Codepur001",
      name: "iPhone 12 Pro",
      desc: "Apple iPhone 12th generation",
      price: 999,
      color: "#35505a",
      image: "", // Replace with a valid image URL
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
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Catalog App"),
        ),
        body: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            final item = CatalogModel.items[index];
            return ListTile(
              leading: Image.network(item.image,
                  errorBuilder: (context, error, stackTrace) {
                return Icon(Icons
                    .broken_image); // Placeholder in case the image fails to load
              }),
              title: Text(item.name),
              subtitle: Text(item.desc),
              trailing: Text("\$${item.price}"),
            );
          },
        ),
      ),
    );
  }
}
