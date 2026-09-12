class Product {
  final String name;
  final String description;
  final double price;
  final String image;
  final String url;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.url,
  });

  String get getSummary {
    return '$name - $description';
  }

  String get formattedPrice {
    return '\$${price.toStringAsFixed(2)}';
  }
}
