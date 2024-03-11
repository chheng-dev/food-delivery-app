import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderItemDetial extends StatelessWidget {
  const HeaderItemDetial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          child: Container(
            width: double.maxFinite,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/feature-2.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          left: 14,
          top: 40,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 110,
          left: 14,
          right: 14,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 210,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(0, 1),
                ),
              ],
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "McDonald's",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            'Kien Svay, Kandal, Cambodia',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                            ),
                          )
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.red,
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(color: Colors.black.withOpacity(.2)),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.red,
                        size: 16,
                      ),
                      SizedBox(width: 5),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: "4.9",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: " (7690 reviews)",
                            style: TextStyle(
                              color: Colors.black.withOpacity(.5),
                            ),
                          ),
                        ]),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.location_solid,
                        color: Colors.red,
                        size: 16,
                      ),
                      SizedBox(width: 5),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: "4.5km",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black.withOpacity(.4),
                            ),
                          ),
                          TextSpan(
                            text: ' 60mins',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.black.withOpacity(.4),
                            ),
                          )
                        ]),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    alignment: Alignment.center,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(.2),
                    ),
                    child: Text(
                      "Offer 10% off on all beverages".toUpperCase(),
                      style: TextStyle(
                          color: Colors.redAccent, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
