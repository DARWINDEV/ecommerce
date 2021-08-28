import 'package:ecommerce/themes.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce/src/routes/routes.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ecommerce App',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: "splashScreen",
      routes: routes,
    );
  }
}


