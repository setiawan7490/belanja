import 'package:flutter/material.dart';
import 'package:flutter_navigasi/pages/home_page.dart';
import 'package:flutter_navigasi/pages/item_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/item': (context) => ItemPage(),
    },
  ));
}