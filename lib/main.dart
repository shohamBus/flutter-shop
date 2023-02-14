import 'package:flutter/material.dart';
import 'package:flutter_shop/config/app_router.dart';
import 'package:flutter_shop/config/theme.dart';

import 'screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      onGenerateRoute: AppRouter.onGenarateRoute,
      initialRoute: HomeScreen.routeName,
      home: HomeScreen(),
    );
  }
}
