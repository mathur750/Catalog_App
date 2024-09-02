import 'package:flutter/material.dart';

class CatalogModel {
  static final items = [
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

  // Convert color from hex string to Color object
  Color getColor() {
    String hex = color.replaceAll("#", "");
    return Color(int.parse("FF$hex", radix: 16));
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Catalog App"),
        ),
        body: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            final item = CatalogModel.items[index];
            return ListTile(
              leading: Image.network(
                item.image,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(
                      Icons.broken_image); // Placeholder for broken images
                },
              ),
              title: Text(item.name),
              subtitle: Text(item.desc),
              trailing: Text("\$${item.price}"),
              tileColor: item
                  .getColor()
                  .withOpacity(0.1), // Use the color for the background
            );
          },
        ),
      ),
    );
  }
}
