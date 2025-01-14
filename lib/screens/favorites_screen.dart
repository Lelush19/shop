import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products_provider.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favoriteProducts =
        Provider.of<ProductsProvider>(context).favoriteProducts;

    return Scaffold(
      appBar: AppBar(title: const Text('Favorite Products')),
      body: favoriteProducts.isEmpty
          ? const Center(
        child: Text(
          'No favorite products yet!',
          style: TextStyle(fontSize: 18),
        ),
      )
          : ListView.builder(
        itemCount: favoriteProducts.length,
        itemBuilder: (ctx, index) {
          final product = favoriteProducts[index];
          return Card(
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 3,
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  product.imagePath.isNotEmpty
                      ? product.imagePath
                      : 'assets/img/default_image.webp',
                  fit: BoxFit.cover,
                  width: 50,
                  height: 50,
                ),
              ),
              title: Text(
                product.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                '\$${product.price.toStringAsFixed(2)}',
                style: const TextStyle(color: Colors.grey),
              ),
            ),
          );
        },
      ),
    );
  }
}
