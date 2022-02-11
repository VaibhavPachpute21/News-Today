import 'dart:async';
import 'package:flutter/material.dart';
import 'package:newstoday/Screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Today',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SpalshScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SpalshScreen extends StatefulWidget {
  @override
  _SpalshScreenState createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
        () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:Image.asset("./assets/flashImg.ico",height:MediaQuery.of(context).size.height,fit:BoxFit.fitWidth ,) 
        );
  }
}


