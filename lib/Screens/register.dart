import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:newstoday/Screens/login.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({ Key? key }) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
 TextEditingController nameController = TextEditingController();
 TextEditingController emailController = TextEditingController();
  TextEditingController pass1Controller = TextEditingController();
  TextEditingController pass2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text("Sign up",
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                  height: 50,
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      labelText: 'Enter your name',
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 50,
                  child: TextField(
                    obscureText: true,
                    controller: emailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      labelText: 'Enter your email id',
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  height: 50,
                  child: TextField(
                    controller: pass1Controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      labelText: 'Create password',
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 50,
                  child: TextField(
                    controller: pass2Controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      labelText: 'Confirm password',
                    ),
                  ),
                ),
                
                 SizedBox(height: 10,),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: GFButton(
                      text: "Sign up",
                      color: Colors.red,
                      shape: GFButtonShape.pills,
                      blockButton: true,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (contex)=>LoginScreen()));
                        print(nameController.text);
                        print(emailController.text);
                        print(pass1Controller.text);
                        print(pass2Controller.text);
                      },
                    )),
                Row(
                  children: <Widget>[
                    const Text('Already have account?'),
                    TextButton(
                      child: const Text(
                        'Sign in',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (contex)=>LoginScreen()));
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            )));
  }
}