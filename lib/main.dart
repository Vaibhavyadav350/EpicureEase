
import 'package:flutter/material.dart';
import 'package:vgrocery_mart/pages/first.dart';


import 'home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: FirstPage()
    );
  }
}
