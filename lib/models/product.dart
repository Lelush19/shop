class Product {
  final String name;
  final double price;
  bool isFavorite;
  final String imagePath; // Добавляем это свойство

  Product({
    required this.name,
    required this.price,
    this.isFavorite = false,
    required String? imagePath, // Разрешаем быть null
  }) : imagePath = imagePath ?? 'assets/img/default_image.webp'; // Если null, используем изображение по умолчанию
}
