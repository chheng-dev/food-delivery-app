import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/widgets/all_offer_section_widget.dart';
import 'package:food_app/widgets/free_delivery_section.dart';
import 'package:food_app/widgets/free_delivery_section_widget.dart';
import 'package:food_app/widgets/offer_banner_widget.dart';
import 'package:food_app/widgets/section_title.dart';
import 'package:food_app/widgets/today_offer_widget.dart';

class RestaurantTab extends StatelessWidget {
  const RestaurantTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    OfferBanner(image: 'images/banner_1.jpg'),
                    OfferBanner(image: 'images/banner_2.jpg'),
                  ],
                ),
              ),
            ),

            // Today Offers
            TodayOfferWidget(),
            SectionTitle(title: 'Free Delivery *', textButton: 'View all'),
            FreeDeliveryScection(),
            SectionTitle(title: 'All Offers', textButton: 'View all'),
            AllOfferWidgetSection(),
          ],
        ),
      ],
    );
  }
}
