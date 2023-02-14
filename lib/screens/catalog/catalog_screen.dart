import 'package:flutter/material.dart';

import '../../widgets/widget.dart';

class CatalogScreen extends StatelessWidget {
  static const routeName = '/catalog';

  const CatalogScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const CatalogScreen());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'CatalogScreen'),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
