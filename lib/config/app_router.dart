import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../screens/screens.dart';

class AppRouter {
  static Route onGenarateRoute(RouteSettings settings) {
    print('This is route ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case '/cart':
        return CartScreen.route();
      case '/wishlist':
        return WishlistScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: RouteSettings(name: '/error'),
        builder: (_) => Scaffold(appBar: AppBar(title: Text('Error'))));
  }
}
