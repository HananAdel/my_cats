import 'package:flutter/material.dart';
import 'package:my_cats/model/cat.dart';
import 'package:my_cats/widgets/CatDetails.dart';

class CatDetailScreen extends StatelessWidget {
  final Cat cat;
  const CatDetailScreen({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
          cat.name,
          style: TextStyle(color: Colors.white),
                    ),
          backgroundColor: Colors.pink[800],
        ),
        body: CatDetailsWidget(
          cat: cat,
        ));
  }
}
