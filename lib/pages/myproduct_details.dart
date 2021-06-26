import 'package:flutter/material.dart';
import 'package:flutter_catalog/classes/items.dart';
import './home_page.dart';

class MyProductDetails extends StatelessWidget {
  final MyItems item;
  const MyProductDetails(this.item);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 10),
          Hero(
            tag: item.id,
            child: Container(
              width: double.infinity,
              height: 360,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                image: DecorationImage(
                  image: NetworkImage(item.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
