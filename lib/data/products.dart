import 'package:ui_engineering/models/product.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

Future<void> loadProducts() async {
  final jsonString = await rootBundle.loadString('lib/data/products.json');
  final data = jsonDecode(jsonString);
  print(data.length);
}

final products = List.generate(
  500,
  (index) => Product(
    name: 'Product ${index + 1}',
    description: 'Description for ${index + 1}',
    price: 999 + (index * 50),
    image: 'https://picsum.photos/400/400?${index + 1}',
    url: 'https://fluttersensei.com/products/${index + 1}',
  ),
);
