import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tut/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                  child: Image.asset(
                "assets/images/login.png.png",
                fit: BoxFit.cover,
              )),
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                      // ignore: non_constant_identifier_names
                      onChanged: (Value) {
                        name = Value;
                        setState(() {
                          // iska use krne pr ye build maithod ko dubara call kr deta hai.
                        });
                      },
                    ),
                    TextFormField(
                      obscureText: true, // use for hide the password.
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });

                        await Future.delayed(const Duration(seconds: 1));

                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        // Container ki help se Elevated button ko design kr rhe hai.
                        alignment: Alignment.center,

                        width: changeButton
                            ? 50
                            : 130, //changeButton use to reduce the button size.
                        height: 50,
                        // color: Colors.deepPurpleAccent,
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 20 : 8),
                        ),
                      ),
                    ),
                    /* ElevatedButton(
                      child: Text("Login"),
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                    ),*/
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
