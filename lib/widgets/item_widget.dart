import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tut/models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(
      10,
      (index) => CatalogModel.items[0],
    );
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(999.toString()),
        /*style: TextStyle(
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,*/
      ),
    );
    // );
  }
}
