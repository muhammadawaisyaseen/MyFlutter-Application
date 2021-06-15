import 'package:flutter/material.dart';
import 'package:flutter_catalog/classes/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _name = "";

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext) {
    if (_formKey.currentState!.validate()) {
      Navigator.pushNamed(context, MyRoutes.homeroute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
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
              "Welcome $_name",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(labelText: "username"),
                      onChanged: (value) {
                        setState(() {
                          _name = value;
                        });
                      },
                      validator: (value) {
                        if (value!.length < 5 || value.isEmpty) {
                          return "Please Enter username and length shold not less than 5";
                        } else
                          return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "password",
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty || value.length < 6) {
                          return "Please Enter Password and length shold not less than 6";
                        } else
                          return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: TextButton.styleFrom(minimumSize: Size(90, 40)),
                        // style: ButtonStyle(
                        //     shape:
                        //         MaterialStateProperty.all<RoundedRectangleBorder>(
                        //             RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(20.0),
                        // ))),
                        onPressed: () => moveToHome(context),
                        child: Text("Login")),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
