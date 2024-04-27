import 'dart:collection';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class GroceryHomePage extends StatefulWidget {
  @override
  _GroceryHomePageState createState() => _GroceryHomePageState();
}

class _GroceryHomePageState extends State<GroceryHomePage> {
  late List<Category> categories = [];
  late List<String> bfsResult = [];
  late List<String> dfsResult= [];

  @override
  void initState() {
    super.initState();
    loadGroceryData();
  }
  Future<void> loadGroceryData() async {
    try {
      // Load the dummy JSON data
      final response = await http.get(Uri.parse('lib/pages/data.json'));

      if (response.statusCode == 200) {
        final contentType = response.headers['content-type'];

        if (contentType != null && contentType.contains('application/json')) {
          final jsonBody = json.decode(response.body);
          categories = Category.fromJsonList(jsonBody['categories']);
          bfsResult = bfsForEntireStore('Spinach', 'Baguette');
          dfsResult = dfsForEntireStore('Fruits', 'Raisins');

          print('Categories: $categories');
          print('BFS Result: $bfsResult');
          print('DFS Result: $dfsResult');

          setState(() {});
        } else {
          print("Invalid content type: $contentType");
        }
      } else {
        print("Failed to load grocery data. Status code: ${response.statusCode}");
      }
    } catch (e) {
      print('Error loading data: $e');
    }
  }



  // Perform BFS on the entire store
  List<String> bfsForEntireStore(String start, String end) {
    List<String> result = [];
    for (var category in categories) {
      result.addAll(category.bfs(start, end));
    }
    return result;
  }

  // Perform DFS on the entire store
  List<String> dfsForEntireStore(String start, String end) {
    List<String> result = [];
    for (var category in categories) {
      result.addAll(category.dfs(start, end));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    if (categories.isEmpty || bfsResult.isEmpty || dfsResult.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Loading...'),
        ),
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Grocery App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 200,
            color: Colors.blue,
            child: Center(
              child: Text(
                'BFS Results: ${bfsResult.join(" -> ")}',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            height: 200,
            color: Colors.green,
            child: Center(
              child: Text(
                'DFS Results: ${dfsResult.join(" -> ")}',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Category {
  final String name;
  final List<Category>? subcategories;
  final List<Product>? products;

  Category({
    required this.name,
    this.subcategories,
    this.products,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      name: json['name'],
      subcategories: json['subcategories'] != null
          ? List<Category>.from(
        json['subcategories'].map((subcategory) => Category.fromJson(subcategory)),
      )
          : null,
      products: json['products'] != null
          ? List<Product>.from(
        json['products'].map((product) => Product.fromJson(product)),
      )
          : null,
    );
  }
  static List<Category> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => Category.fromJson(json)).toList();
  }

  // BFS Traversal
  List<String> bfs(String start, String end) {
    final Queue<List<Category>> queue = Queue();
    final List<String> visited = [];

    queue.add([this]);

    while (queue.isNotEmpty) {
      final path = queue.removeFirst();
      final node = path.last;

      if (visited.contains(node.name)) {
        continue;
      }

      visited.add(node.name);

      if (node.name == end) {
        return path.map((category) => category.name).toList();
      }

      if (node.subcategories != null) {
        for (final subcategory in node.subcategories!) {
          final List<Category> newPath = List.from(path);
          newPath.add(subcategory);
          queue.add(newPath);
        }
      }
    }

    return [];
  }

  // DFS Traversal
  List<String> dfs(String start, String end) {
    final Stack<List<Category>> stack = Stack();
    final List<String> visited = [];

    stack.add([this]);

    while (stack.isNotEmpty) {
      final path = stack.removeLast();
      final node = path.last;

      if (visited.contains(node.name)) {
        continue;
      }

      visited.add(node.name);

      if (node.name == end) {
        return path.map((category) => category.name).toList();
      }

      if (node.subcategories != null) {
        for (final subcategory in node.subcategories!) {
          final List<Category> newPath = List.from(path);
          newPath.add(subcategory);
          stack.add(newPath);
        }
      }
    }

    return [];
  }
}

class Product {
  final String name;
  final double price;

  Product({
    required this.name,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'],
      price: json['price'],
    );
  }
}

class Stack<T> {
  final List<T> _list = [];

  void add(T value) {
    _list.add(value);
  }

  T removeLast() {
    return _list.removeLast();
  }

  bool get isNotEmpty => _list.isNotEmpty;
}
