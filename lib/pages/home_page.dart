import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "codepur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Catalog App'), backgroundColor: Colors.deepPurple),
      body: Center(
        child: Container(
          child: Text("Welcoe to 30 days of flutter"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
