import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tut/models/catalog.dart';
import 'package:flutter_tut/widgets/drawer.dart';
import 'package:flutter_tut/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "codepur";

  @override
  void initState() {
    super.initState();
    loadData() async {
      final catalogJson =
          await rootBundle.loadString("assets/files/Catalog.json");
      final decodeData = jsonDecode(catalogJson);
      var productsData = decodeData["products"];

      CatalogModel.items = List.from(productsData)
          .map<Item>((item) => Item.fromMap(item))
          .toList();

      setState(() {
        // ise call krne par hi data reload hoga...
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Center(child: Text('Catalog App')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
