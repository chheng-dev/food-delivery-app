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
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bag_fill),
            label: 'Offer',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.cart_fill),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: currentIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black.withOpacity(.5),
        backgroundColor: Colors.redAccent,
        iconSize: 40,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
