import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop/config/theme.dart';

import '../../config/models/models.dart';
import '../../widgets/widget.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/';

  const HomeScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Zero To Unicorn'),
      bottomNavigationBar: const CustomNavBar(),
      body: Column(
        children: [
          Container(
              child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 2.0,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              initialPage: 2,
            ),
            items: Category.categories
                .map((category) => HeroCaruselCard(category: category))
                .toList(),
          )),
          SectionTitle(title: 'Recomended'),
          ProductsCarusel(
              products: Product.products
                  .where((product) => product.isRecomended)
                  .toList()),
          SectionTitle(title: 'Popular'),
          ProductsCarusel(
              products: Product.products
                  .where((product) => product.isPopular)
                  .toList())
        ],
      ),
    );
  }
}
