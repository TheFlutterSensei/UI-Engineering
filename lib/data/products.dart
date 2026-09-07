import 'package:ui_engineering/models/product.dart';

final products = List.generate(
  500,
  (index) => Product(
    name: 'Product ${index + 1}',
    description: 'Description for ${index + 1}',
    price: 999 + (index * 50),
    image: 'https://picsum.photos/400/400?${index + 1}',
  ),
);
