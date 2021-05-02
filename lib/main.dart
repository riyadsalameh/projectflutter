import 'package:app/Products.dart';
import 'package:flutter/material.dart';

import 'categories.dart';
import 'home.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
   theme: ThemeData.dark(),
   routes: {
     'categories': (context){return categories();},
     'pro': (context){return ProductsScreen();},
     'home': (context){ return home();},
   },

    );
  }
}