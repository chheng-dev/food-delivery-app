import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/widgets/item_details/header.dart';
import 'package:food_app/widgets/single_items.dart';

class ItemDetial extends StatelessWidget {
  const ItemDetial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  width: double.maxFinite,
                  height: 325,
                  child: HeaderItemDetial(),
                ),
                SingleItems(
                  image: 'images/feature-1.avif',
                  title: 'Creamy nachos',
                  price: 14.5,
                  description: 'With maxican salad',
                ),
                SingleItems(
                  image: 'images/feature-2.jpeg',
                  title: 'Creamy nachos',
                  price: 20.2,
                  description: 'With maxican salad',
                ),
                SingleItems(
                  image: 'images/feature_3.jpeg',
                  title: 'Creamy nachos',
                  price: 11.00,
                  description: 'With maxican salad',
                ),
                SingleItems(
                  image: 'images/feature_4.jpeg',
                  title: 'Creamy nachos',
                  price: 11.00,
                  description: 'With maxican salad',
                ),
              ],
            ),
          ),
          Container(
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(100),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red.withOpacity(.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        title: Text(
                          '1 Item | Subtotal: \$${5.00}', // Removed const because of the dynamic expression
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        subtitle: Text(
                          'Extra charges may apply.',
                        ), // Removed const for consistency and typo fix
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Order',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
