import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/models/pupolar_items.dart';
import 'package:food_app/widgets/item_details.dart';

class NearByPlaceWidget extends StatelessWidget {
  const NearByPlaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ItemDetial()));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "Nearby Deals",
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
            height: 270,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: PopularItemsList.length,
              itemBuilder: (BuildContext context, int index) {
                int idx = index % PopularItemsList.length;
                return Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 140.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage(PopularItemsList[idx].image),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "10% OFF",
                                  style: TextStyle(
                                    color: Colors.white,
                                    backgroundColor: Colors.redAccent,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Text(
                              "McDonald's",
                              style: Theme.of(context).textTheme.headline1,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              "Mexican Creamy nachos",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  ?.copyWith(
                                    color: Colors.black.withOpacity(.5),
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Text(
                                  "\$ 10.0",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.lineThrough,
                                    color: Colors.red,
                                  ),
                                ),
                                SizedBox(width: 15),
                                Text(
                                  "\$ 8.00",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
