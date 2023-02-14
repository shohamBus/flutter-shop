import 'package:flutter/material.dart';

import '../config/models/models.dart';
import 'product_card.dart';

class ProductsCarusel extends StatelessWidget {
  final List<Product> products;
  const ProductsCarusel({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: ProductCard(
                product: products[index],
              ),
            );
          }),
    );
  }
}
