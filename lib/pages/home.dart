// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:badges/badges.dart' as badges;
import 'package:plantapp/pages/cart_page.dart';
import 'package:plantapp/pages/explore_page.dart';
import 'package:plantapp/pages/profile_page.dart';
import 'package:plantapp/pages/services_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final pages = [ExplorePage(), ServicesPage(), CartPage(), ProfilePage()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: false,
        title: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
            'Hi Hemanth !',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            'Enjoy our Services',
            style: Theme.of(context).textTheme.titleMedium,
          )
        ]),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 13),
            child: IconButton.filledTonal(
              onPressed: () {},
              icon: badges.Badge(
                  position: badges.BadgePosition.topEnd(top: -12, end: -15),
                  badgeContent: Text(
                    '12',
                    style: TextStyle(fontSize: 12),
                  ),
                  badgeStyle: badges.BadgeStyle(badgeColor: Colors.green),
                  child: const Icon(IconlyBroken.notification)),
            ),
          )
        ],
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.home),
                activeIcon: Icon(IconlyBold.home),
                label: "home"),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.call),
                activeIcon: Icon(IconlyBold.call),
                label: "Services"),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.buy),
                activeIcon: Icon(IconlyBold.buy),
                label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(IconlyLight.profile),
                activeIcon: Icon(IconlyBold.profile),
                label: "Profile")
          ]),
    );
  }
}
