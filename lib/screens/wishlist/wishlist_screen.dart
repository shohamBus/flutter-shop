import 'package:flutter/material.dart';

import '../../widgets/widget.dart';

class WishlistScreen extends StatelessWidget {
  static const routeName = '/wishlist';

  const WishlistScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const WishlistScreen());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'WishlistScreen'),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
