
import 'package:flutter/material.dart';
import 'package:my_cats/model/cat.dart';

class CatDetailsWidget extends StatelessWidget {
  final Cat cat;
  const CatDetailsWidget({
    super.key,
    required this.cat
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //cat image
        Image.network(cat.imageLink),
        //name
        Text(cat.name, style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
        //info
        Text('Origin: ${cat.origin}'),
        Text('Max Weight: ${cat.maxWeight}'),
        Text('Min Weight: ${cat.minWeight}'),
        Text('Length: ${cat.length}'),
        Text('Intellegence: ${cat.intelligence}'),
      ],
    );
  }
}