import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/models/pupolar_items.dart';

class PopularItemsWidget extends StatelessWidget {
  const PopularItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                "Popular Items",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                "View all",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey.shade700,
                ),
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
            itemCount: PopularItemsList.length,
            itemBuilder: (BuildContext context, int index) {
              int actualIndex = index % PopularItemsList.length;
              return Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Row(
                      children: [
                        Container(
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage(
                                  PopularItemsList[actualIndex].image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                PopularItemsList[actualIndex].title,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                PopularItemsList[actualIndex].vendor,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Colors.grey.shade400,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "\$ ${PopularItemsList[actualIndex].price}.00",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
