import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductsProvider with ChangeNotifier {
  final List<Product> _products = [
    Product(name: 'Apple', price: 1.2, imagePath: 'assets/img/apple.webp'),
    Product(name: 'Banana', price: 0.8, imagePath: 'assets/img/banana.webp'),
    Product(name: 'Orange', price: 1.5, imagePath: 'assets/img/orange.webp'),
  ];

  List<Product> get allProducts => _products;

  List<Product> get favoriteProducts =>
      _products.where((product) => product.isFavorite).toList();

  void toggleFavoriteStatus(Product product) {
    // Меняем статус избранного
    product.isFavorite = !product.isFavorite;
    notifyListeners(); // Уведомляем об изменении данных
  }
}
