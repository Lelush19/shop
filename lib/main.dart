// main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/all_products_screen.dart';
import 'providers/products_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductsProvider(),
      child: MaterialApp(
        title: 'Products App',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const AllProductsScreen(),
      ),
    );
  }
}
