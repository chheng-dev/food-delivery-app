import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/widgets/nearby_place_widget.dart';
import 'package:food_app/widgets/popular_items.dart';
import 'package:food_app/widgets/top_category_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: ListView(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    height: 60,
                    width: 60,
                    child: Icon(
                      CupertinoIcons.location_solid,
                      size: 35,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search for meals or area',
                          suffixIcon: Icon(
                            CupertinoIcons.search,
                            size: 28,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // Top Categories
              SizedBox(height: 20),
              TopCategoriesWidget(),
              PopularItemsWidget(),
              SizedBox(height: 20),
              NearByPlaceWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
