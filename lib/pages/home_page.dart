import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/classes/items.dart';
import 'package:flutter_catalog/pages/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Malik Awais";
  final List<MyItems> itemslist = [
    MyItems(
        id: 1,
        name: "SAMSUNGA51",
        disc: "overall good",
        price: 50000,
        color: "black",
        image:
            "data:image/jpeg;base64,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"),
  ];

  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(20, (index) => itemslist[0]);
    //final dummylist=new List<int>.generate(3, (int index) => index * index);
    return Scaffold(
      //backgroundColor: Color.fromARGB(78, 93, 43, 12),
      appBar: AppBar(
        title: Text("Flutter Catalog"),
      ),
      body: ListView.builder(
        itemCount: dummylist.length,
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
            child: Card(
              shape: StadiumBorder(),
              child: ListTile(
                leading: Image.network(dummylist[index].image),
                title: Text(dummylist[index].name),
                subtitle: Text(dummylist[index].disc),
                trailing: Text(
                  "\$${dummylist[index].price.toString()}",
                  style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          );
        },
      ),

      drawer: MyDrawer(),
    );
  }
}
