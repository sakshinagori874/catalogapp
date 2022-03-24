import 'package:catalog/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                    // border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                    // border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 40),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeroute);
                    },
                    child: Text("Login"),
                    style: TextButton.styleFrom(minimumSize: Size(150, 40))),
              ],
            ),
          ),
        ));
  }
}
