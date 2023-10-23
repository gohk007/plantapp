// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.all(16),
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Row(
            children: [ 
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      prefixIcon: Icon(IconlyLight.search),
                      hintText: 'Serach',
                      isDense: true,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.all(Radius.circular(99)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: IconButton.filled(onPressed: () {}, icon: Icon(IconlyLight.filter)),
              )
            ],
          ),
        ),
        
        //Card
        SizedBox(height: 170,child: Card(
          color: Colors.green.shade50,
          elevation: 0.1,
          shadowColor: Colors.green.shade50,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Column(
                  children: [
                  Text(
                  'Free Consultaion',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.green.shade700)),
                  ]
                ),
              ],
            ),
          ),
        )),

      ],
    ));
  }
}
