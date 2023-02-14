import 'package:flutter/material.dart';

import '../../widgets/widget.dart';

class ProductScreen extends StatelessWidget {
  static const routeName = '/product';

  const ProductScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const ProductScreen());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'ProductScreen'),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
