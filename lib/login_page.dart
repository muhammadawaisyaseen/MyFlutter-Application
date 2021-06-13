import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "myassets/images/login.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Welcome",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: "username"),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "password",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ))),
                    onPressed: () {
                      print("Awais yaseen");
                    },
                    child: Text("Login")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
