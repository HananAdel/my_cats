import 'package:flutter/material.dart';
import 'package:my_cats/model/cat.dart';
import 'package:my_cats/widgets/CatCard.dart';
import 'package:my_cats/main.dart';

class CatsHomePage extends StatelessWidget {
  const CatsHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[800],
        title: Text('My Cats', style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              ))
        ],
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: cats.length,
        itemBuilder: (context, index){
          final cat = cats[index];
          return CatCard(cat: cat,);

        },
        
      ),
    );
  }
}


