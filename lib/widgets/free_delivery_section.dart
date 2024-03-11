import 'package:flutter/material.dart';
import 'package:food_app/widgets/free_delivery_section_widget.dart';

class FreeDeliveryScection extends StatelessWidget {
  const FreeDeliveryScection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: Colors.white,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              FreeDeliveryOfferSectionWidget(
                title: 'បាយឆាសាច់ជ្រូក',
                time: '40 - 50 mins',
                tag: 'Dessert',
                price: 4.50,
                image: 'images/image_2.jpeg',
              ),
              SizedBox(width: 10),
              FreeDeliveryOfferSectionWidget(
                title: 'បាយឆាសាច់ជ្រូក',
                time: '40 - 50 mins',
                tag: 'Dessert',
                price: 14.50,
                image: 'images/image_1.jpeg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
