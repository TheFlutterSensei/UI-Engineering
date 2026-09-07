class Product {
  final String name;
  final String description;
  final double price;

  Product({required this.name, required this.description, required this.price});

  String get getSummary {
    return '$name - $description';
  }

  String get formattedPrice {
    return '\$${price.toStringAsFixed(2)}';
  }
}
