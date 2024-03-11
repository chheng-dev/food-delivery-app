import 'package:flutter/material.dart';

class FreeDeliveryOfferSectionWidget extends StatelessWidget {
  final String title;
  final String time;
  final String tag;
  final double price;
  final String image;
  const FreeDeliveryOfferSectionWidget({
    super.key,
    required this.title,
    required this.time,
    required this.tag,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.65,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.black.withOpacity(.4),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
                Text(
                  tag,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.4),
                  ),
                ),
                Text(
                  time,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.4),
                  ),
                ),
                Spacer(),
                Text(
                  '${price}\$',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
