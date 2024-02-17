import 'package:flutter/material.dart';
import 'package:my_cats/CatDetailScreen.dart';
import 'package:my_cats/model/cat.dart';

class CatCard extends StatelessWidget {
  final Cat cat;
  const CatCard({
    super.key, required this.cat,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CatDetailScreen(cat: cat);}));
      },
      child: Card(
          child: Column(
            children: [
              Expanded(
                child: Image.network(width: double.infinity,
                fit: BoxFit.cover,
                cat.imageLink),
               ),
              Text(cat.name)                
            ],
      )),
    );
  }
}