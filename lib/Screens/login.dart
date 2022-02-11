
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:newstoday/Screens/LandingPage.dart';
import 'package:newstoday/Screens/forgotPassword.dart';
import 'package:newstoday/Screens/register.dart';

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
        body: ListView(
          padding: EdgeInsets.all(5),
          children: <Widget>[
            Container(
              height: 50,
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  hintText: 'Enter your Email',
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 50,
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                      hintText: "Enter your Password"  
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (contex)=>ForgotPassword()));
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
                    Navigator.push(context, MaterialPageRoute(builder: (contex)=>LandingPage()));
                    print(nameController.text);
                    print(passwordController.text);
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
                    Navigator.push(context, MaterialPageRoute(builder: (contex)=>RegisterScreen()));
                  },
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            SizedBox(height: 5,),
            Row( children:[ Expanded( child: Divider(thickness: 1,endIndent: 5,) ), Text("OR"), Expanded( child: Divider(thickness: 1,indent: 5,) ), ] ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color:Colors.transparent,
                  child: GFIconButton(icon:Image.asset("./assets/google.png",), onPressed: (){print("preed");},color: Colors.transparent, )),
              ],
            )
          ],
        ));
  }
}
