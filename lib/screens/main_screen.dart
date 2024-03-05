import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/screens/home_screen.dart';
import 'package:food_app/screens/order_screen.dart';
import 'package:food_app/screens/offer_screen.dart';
import 'package:food_app/screens/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class Page {
  final String title;
  final Widget content;

  Page({required this.title, required this.content});
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final List<Page> pages = [
    Page(title: 'Explore', content: HomeScreen()),
    Page(title: 'Menu', content: OfferScreen()),
    Page(title: 'Cart', content: OrderScreen()),
    Page(title: 'Profile', content: ProfileScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex].content,
      bottomNavigationBar: Container(
        height: 100,
        child: AnimatedBottomNavigationBar(
          backgroundColor: Colors.red,
          icons: [
            Icons.explore,
            CupertinoIcons.bag_fill,
            CupertinoIcons.cart_fill,
            CupertinoIcons.person_circle
          ],
          iconSize: 40,
          activeIndex: currentIndex,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          gapLocation: GapLocation.none,
          activeColor: Colors.white,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          onTap: (index) => {
            setState(() => currentIndex = index),
          },
        ),
      ),
    );
  }
}
