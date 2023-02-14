import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({required this.name, required this.imageUrl});

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    Category(
        name: 'Soft Drink',
        imageUrl:
            'https://thumbs.dreamstime.com/b/colorful-cold-drinks-plastic-cups-ice-dark-background-86654419.jpg'),
    Category(
        name: 'Smoothies',
        imageUrl:
            'https://cdn.xxl.thumbs.canstockphoto.com/three-glasses-of-smoothies-with-different-berries-and-bananas-stock-photo_csp9684704.jpg'),
    Category(
        name: 'Water',
        imageUrl:
            'https://thumbs.dreamstime.com/b/glass-clean-drinking-water-44066082.jpg'),
  ];
}
