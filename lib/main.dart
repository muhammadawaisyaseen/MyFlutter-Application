import 'package:flutter/material.dart';
import 'package:flutter_catalog/classes/routes.dart';
import 'package:flutter_catalog/login_page.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

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
      //debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        fontFamily: GoogleFonts.padauk().fontFamily,
      ),
      darkTheme: ThemeData(primarySwatch: Colors.brown),
      initialRoute: "/",
      routes: {
        '/': (context) => LoginPage(),
        MyRoutes.homeroute: (context) => HomePage(),
        //MyRoutes.loginroute: (context) => LoginPage(),
      },
    );
  }
}
