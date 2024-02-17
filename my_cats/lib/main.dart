import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_cats/CatDetailScreen.dart';
import 'package:my_cats/CatsHomePage.dart';
import 'package:my_cats/data/allCats.dart';
import 'package:my_cats/model/cat.dart';

//im compeleting the rest tommorrow if my work isnt saved i might kill myself
final cats = allCats.map<Cat>((jsonCat) => Cat.fromJson(jsonCat)).toList();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: CatsHomePage());
  }
}
