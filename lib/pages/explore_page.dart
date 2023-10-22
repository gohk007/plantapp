import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(
      padding: EdgeInsets.all(16),
      children: [
       Row(
        children: [
          Expanded(child: TextField(decoration: InputDecoration(hintText: 'Serach'),)),
          IconButton.filled(onPressed: (){}, icon: Icon(IconlyLight.filter))
        ],
       )
      ],
    ));
  }
}