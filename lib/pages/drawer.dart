import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  bool isPresed = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // child: Container(
      //
      child: Container(
        color: Colors.amber,
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.all(0),
                accountName: Text("M.Awais"),
                accountEmail: Text("malikawais@gmail.com"),
                decoration: BoxDecoration(color: Colors.transparent),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "data:image/jpeg;base64,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"),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.5,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.phone,
                color: Colors.black,
              ),
              title: Text(
                "Contact",
                textScaleFactor: 1.5,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.5,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.black,
              ),
              title: Text(
                (isPresed) ? "Hy Mail kro mujay bai" : "Email me",
                textScaleFactor: 1.5,
              ),
              onTap: () {
                setState(() {
                  isPresed = !isPresed;
                  //print("Awais");
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
