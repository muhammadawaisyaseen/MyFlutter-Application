import 'package:flutter/material.dart';
import 'package:flutter_catalog/login_page.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //   int days = 30;
  // String name = "codepur";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.pink),
      darkTheme: ThemeData(primarySwatch: Colors.brown),
      initialRoute: "/loginpage",
      routes: {
        '/': (context) => LoginPage(),
        "/loginpage": (context) => LoginPage(),
        "/homepage": (context) => HomePage(),
      },
    );
  }
}
