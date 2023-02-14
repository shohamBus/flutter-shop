import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecomended;
  final bool isPopular;

  const Product(
      {required this.name,
      required this.category,
      required this.imageUrl,
      required this.price,
      required this.isRecomended,
      required this.isPopular});

  @override
  List<Object?> get props =>
      [name, imageUrl, category, isPopular, isRecomended, price];

  static List<Product> products = [
    Product(
        name: 'Soft Drink #1 ',
        category: 'Soft Drink',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Sunkist_Soda_Orange_flavour_%28Hong_Kong_version%29.jpg/1200px-Sunkist_Soda_Orange_flavour_%28Hong_Kong_version%29.jpg',
        price: 2.99,
        isPopular: true,
        isRecomended: false),
    Product(
        name: 'Soft Drink #2',
        category: 'Soft Drink',
        imageUrl:
            'https://m.media-amazon.com/images/I/61Bn5-uzC1L._SL1500_.jpg',
        price: 2.99,
        isPopular: false,
        isRecomended: false),
    Product(
        name: 'Soft Drink #3',
        category: 'Soft Drink',
        imageUrl:
            'https://www.rd.com/wp-content/uploads/2018/02/novyy-urengoy-russia-november-7-2018-aluminium-can-of-the-7up-lemon-lime-isolated-over-white-background.jpg',
        price: 2.99,
        isPopular: false,
        isRecomended: true),
    Product(
        name: 'Smoothies #1',
        category: 'Smoothies',
        imageUrl:
            'https://bellyfull.net/wp-content/uploads/2020/06/Strawberry-Smoothie-blog.jpg',
        price: 2.99,
        isPopular: true,
        isRecomended: true),
    Product(
        name: 'Smoothies #2',
        category: 'Smoothies',
        imageUrl:
            'https://www.blessthismessplease.com/wp-content/uploads/2022/06/tropical-smoothie-recipe-5.jpg',
        price: 2.99,
        isPopular: false,
        isRecomended: false),
    Product(
        name: 'Smoothies #3',
        category: 'Smoothies',
        imageUrl:
            'https://insanelygoodrecipes.com/wp-content/uploads/2022/07/Healthy-Homemade-Refreshing-Green-Smoothies-with-Kiwi-Lime-and-Vegetables.jpg',
        price: 2.99,
        isPopular: false,
        isRecomended: true),
    Product(
        name: 'Water #1',
        category: 'Water',
        imageUrl:
            'https://assets3.thrillist.com/v1/image/2490227/1000x666/flatten;crop;webp=auto;jpeg_quality=60.jpg',
        price: 2.99,
        isPopular: false,
        isRecomended: true),
    Product(
        name: 'Water #2',
        category: 'Water',
        imageUrl:
            'https://images.ctfassets.net/x1vbd41hpla5/6w0vw14XntT5MQAd9n1zBL/c9d8a3bfc152331edf123e7e2f0fb0d5/18350024_2.jpg',
        price: 2.99,
        isPopular: false,
        isRecomended: true),
  ];
}
