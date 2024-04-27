import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage()
    );
  }
}

class GroceryListPage extends StatefulWidget {
  @override
  _GroceryListPageState createState() => _GroceryListPageState();
}

class _GroceryListPageState extends State<GroceryListPage> {
  List<Map<String, dynamic>> groceries = [];

  @override
  void initState() {
    super.initState();
    fetchGroceries();
  }

  Future<void> fetchGroceries() async {
    final response = await http.get(Uri.parse('http://54.172.30.118:4000/home/?format=json'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body)['grocery'];
      setState(() {
        groceries = jsonData.cast<Map<String, dynamic>>();
      });
    } else {
      throw Exception('Failed to load groceries');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grocery List'),
      ),
      body: ListView.builder(
        itemCount: groceries.length,
        itemBuilder: (context, index) {
          final grocery = groceries[index];
          return ListTile(
            title: Text(grocery['name']),
          );
        },
      ),
    );
  }
}
