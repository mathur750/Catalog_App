import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Center(
              child: Image.asset(
            "assets/images/login.png.png",
            fit: BoxFit.cover,
          )),
          const Text(
            "Welcome",
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true, // use for hide the password.
                  decoration: const InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    print("login succesfull");
                  },
                  child: Text("Login"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
