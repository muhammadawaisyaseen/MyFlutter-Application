import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Malik Awais";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(78, 93, 43, 12),
      appBar: AppBar(
        title: Text("Flutter Catalog"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days of flutter by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
