class Product {
  final String name;
  final String description;
  final double price;
  final String image;
  final String url;
  final List<String> tags;
  final double? discount;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.url,
    required this.tags,
    required this.discount,
  });

  String get getSummary {
    return '$name - $description';
  }

  String get formattedPrice {
    return '\$${price.toStringAsFixed(2)}';
  }

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'],
      description: json['description'],
      price: (json['price'] as num).toDouble(),
      image: json['image'],
      url: json['url'],
      tags: List<String>.from(json['tags']),
      discount: (json['discount'] as num?)?.toDouble(),
    );
  }
}
