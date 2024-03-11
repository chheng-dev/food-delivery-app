import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllOfferWidgetSection extends StatelessWidget {
  const AllOfferWidgetSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 12, right: 12, bottom: 20),
      child: Container(
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
                width: MediaQuery.of(context).size.width * 0.3,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage('images/feature-2.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '10% OFF',
                    style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.redAccent,
                    ),
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
                    'Meal Box',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Iitalian, Chinese & India',
                    style: Theme.of(context)
                        .textTheme
                        .headline2
                        ?.copyWith(color: Colors.black.withOpacity(.5)),
                  ),
                  Container(
                    width: 100,
                    child: Divider(),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star_rounded,
                        color: Colors.amber,
                        size: 20,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '4.5',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      SizedBox(width: 15),
                      Icon(
                        CupertinoIcons.clock,
                        size: 20,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '40 - 50 min',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'Free Delivery',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      SizedBox(width: 10),
                      Text(
                        '30 \$ for two',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
