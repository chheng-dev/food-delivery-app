import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/categories.dart';

class TopCategoriesWidget extends StatelessWidget {
  const TopCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                "Top Categories",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.slider_horizontal_3,
                    size: 24,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Filter",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),

        // Items
        SizedBox(height: 20),
        Container(
          width: double.infinity,
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: CategoriesList.length * 2,
            itemBuilder: (BuildContext context, int index) {
              int actualIndex = index % CategoriesList.length;
              return Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Column(
                  children: [
                    Container(
                      width: 140,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage(CategoriesList[actualIndex].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      CategoriesList[actualIndex].title,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
