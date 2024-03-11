import 'package:flutter/material.dart';
import 'package:food_app/widgets/today_offer_section.dart';

class TodayOfferWidget extends StatelessWidget {
  const TodayOfferWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            color: Colors.white,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Today's Offers",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    child: Row(
                      children: [
                        TodayOfferSection(
                          rating: '4.5',
                          title: "McDonald's",
                          image: 'images/feature-1.avif',
                          discount: "20% OFF",
                          price: '10\$ for tow',
                          time: '40 - 50 mins',
                        ),
                        SizedBox(width: 15),
                        TodayOfferSection(
                          rating: '4.0',
                          title: 'Spagatti',
                          image: 'images/feature-2.jpeg',
                          discount: '10% OFF',
                          price: '15\$ for one',
                          time: '15 - 20 mins',
                        ),
                        SizedBox(width: 15),
                        TodayOfferSection(
                          rating: '4.0',
                          title: 'Pasta',
                          image: 'images/feature_3.jpeg',
                          discount: '10% OFF',
                          price: '15\$ for one',
                          time: '15 - 20 mins',
                        )
                      ],
                    ),
                  ),
                ),
                // title
              ],
            ),
          ),
        ),
      ],
    );
  }
}
