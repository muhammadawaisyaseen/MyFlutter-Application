//import 'dart:convert';

import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart' show rootBundle;
//import 'package:flutter/services.dart';

import 'package:flutter_catalog/classes/items.dart';
import 'package:flutter_catalog/classes/routes.dart';
import 'package:flutter_catalog/pages/drawer.dart';
import 'package:flutter_catalog/pages/myproduct_details.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2aF5c04Ba4OWXMQkL6DqvcbJL3Qj7_jfiKA&usqp=CAU"),
    MyItems(
        id: 2,
        name: "SAMSUNGA51",
        disc: "overall good",
        price: 50000,
        color: "black",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS98JCzKkVYME2nmOLi2uS4_7I9Q_xRcqP1-g&usqp=CAU"),
    MyItems(
        id: 3,
        name: "SAMSUNGA51",
        disc: "overall good",
        price: 50000,
        color: "black",
        image:
            "data:image/jpeg;base64,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"),
    MyItems(
        id: 4,
        name: "SAMSUNGA51",
        disc: "overall good",
        price: 50000,
        color: "black",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0GlBcwsFieahL5mdb7ziCX43jXDNM7SC1-g&usqp=CAU"),
    MyItems(
        id: 5,
        name: "SAMSUNGA51",
        disc: "overall good",
        price: 50000,
        color: "black",
        image:
            "data:image/jpeg;base64,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"),
    MyItems(
        id: 6,
        name: "SAMSUNGA51",
        disc: "overall good",
        price: 50000,
        color: "black",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZmgb6iHdeG-MjYOhYdQi8mR2gFeQdjCPgug&usqp=CAU"),
    MyItems(
        id: 7,
        name: "SAMSUNGA51",
        disc: "overall good",
        price: 50000,
        color: "black",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS20plZ5dGF6UhcF_pJpFH2FFEYFjBm2UDcaw&usqp=CAU"),
    MyItems(
        id: 7,
        name: "SAMSUNGA51",
        disc: "overall good",
        price: 50000,
        color: "black",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS20plZ5dGF6UhcF_pJpFH2FFEYFjBm2UDcaw&usqp=CAU"),
    MyItems(
        id: 7,
        name: "SAMSUNGA51",
        disc: "overall good",
        price: 50000,
        color: "black",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS20plZ5dGF6UhcF_pJpFH2FFEYFjBm2UDcaw&usqp=CAU"),
  ];

  @override
  // void initState() {
  //   super.initState();
  //   loaddata();
  // }

  // loaddata() async {
  //   var jasondata = await rootBundle.loadString("myassets/files/awais.json");
  //   var decodeddata = jsonDecode(jasondata);
  //   var myproductsdata = decodeddata["myproducts"];
  //   List<MyItems> list = List.from(myproductsdata).map<MyItems>((it) => it.fromMap(it)).toList();

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Technical Things",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: null),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              itemCount: itemslist.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 6,
                mainAxisSpacing: 8,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            MyProductDetails(itemslist[index]),
                      )),
                  child: Card(
                    elevation: 6,
                    child: GridTile(
                      child: Hero(
                        tag: itemslist[index].id,
                        child: Image.network(itemslist[index].image),
                      ),
                      header: Container(
                          padding: EdgeInsets.all(6),
                          alignment: Alignment.bottomLeft,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              )),
                          child: Text(
                            itemslist[index].name,
                            style: TextStyle(color: Colors.white),
                          )),
                      footer: Container(
                        padding: EdgeInsets.all(6),
                        alignment: Alignment.bottomLeft,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.tealAccent,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            )),
                        child: Text(
                          "\$${itemslist[index].price.toString()}",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                );
              }),
        ),
        drawer: MyDrawer());
  }
}
