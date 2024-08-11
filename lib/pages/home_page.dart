import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "codepur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Catalog App')),
      ),
      body: Center(
        child: Container(
          child: Text("Welcoe to 30 days of flutter"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
