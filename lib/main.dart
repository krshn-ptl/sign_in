import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import './screen/starting_page.dart';
import './login.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
