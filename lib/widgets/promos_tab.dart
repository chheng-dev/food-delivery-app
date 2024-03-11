import 'package:flutter/material.dart';
import 'package:food_app/widgets/promots_items.dart';

class PromoTab extends StatelessWidget {
  const PromoTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        PromosItems(
          logo: 'images/google.jpeg',
          title: 'Pay',
          status: 'Delivery',
          titleHeading: 'Free Delivery for the first time users',
          description:
              'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using.',
        ),
        PromosItems(
          logo: 'images/aba-logo.png',
          title: 'ABA Pay',
          status: 'Delivery',
          titleHeading: 'Get Ulimited free delivery using ABA Pay',
          description:
              'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using.',
        ),
        PromosItems(
          logo: 'images/visa-logo.jpeg',
          title: 'Visa Card',
          status: 'Delivery',
          titleHeading: 'Get Ulimited free delivery using Visa Card',
          description:
              'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using.',
        )
      ],
    );
  }
}
