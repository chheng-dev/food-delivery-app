import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OrderItems extends StatelessWidget {
  const OrderItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ListTile(
                  leading: CircleAvatar(),
                  title: Text(
                    "Café Amazon (Sky Tree)",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14
                    ),
                  ),
                ),
              ),
              Text("Finished"),
              SizedBox(width: 10),
            ],
          ),
          Divider(),
          Container(
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('images/amazon_logo.jpg'),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Iced Expreesso"),
                            Text(
                              "Total 1 items",
                              style: TextStyle(
                                color: Colors.black.withOpacity(.5),
                                fontSize: 12
                              ),
                            ),
                            Text(
                              '14/03/2024 09:20AM',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(.5),
                                  fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Total: \$ 10.00",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
