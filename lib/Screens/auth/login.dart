// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:newstoday/LandingPage.dart';
import 'package:newstoday/Screens/HomeScreen/LanguagePreferenceScreen.dart';
import 'package:newstoday/Screens/auth/forgotPassword.dart';
import 'package:newstoday/Screens/auth/register.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "Log in",
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    child: TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        hintText: 'Enter your Email',
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    child: TextField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          hintText: "Enter your Password"),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contex) => ForgotPassword()));
                    },
                    child: const Text(
                      'Forgot Password',
                    ),
                  ),
                  Container(
                      height: 50,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: GFButton(
                        text: "Log in",
                        color: Colors.red,
                        shape: GFButtonShape.pills,
                        blockButton: true,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (contex) => LanguagePrefScreen()));
                        },
                      )),
                  Row(
                    children: <Widget>[
                      const Text('Does not have account?'),
                      TextButton(
                        child: const Text(
                          'Sign up',
                          style: TextStyle(fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (contex) => RegisterScreen()));
                        },
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ],
              ),
            ),
            Row(children: [
              const Expanded(
                  child: Divider(
                thickness: 1,
                endIndent: 5,
              )),
              const Text("OR"),
              const Expanded(
                  child: Divider(
                thickness: 1,
                indent: 5,
              )),
            ]),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    color: Colors.transparent,
                    child: GFIconButton(
                      icon: Image.asset(
                        "./assets/google.png",
                      ),
                      iconSize: 50,
                      onPressed: () {},
                      color: Colors.transparent,
                    )),
                Container(
                    color: Colors.transparent,
                    child: GFIconButton(
                      icon: Image.asset(
                        "./assets/images/fblogo.png",
                      ),
                      iconSize: 45,
                      onPressed: () {},
                      color: Colors.transparent,
                    )),
              ],
            )
          ],
        ));
  }
}
