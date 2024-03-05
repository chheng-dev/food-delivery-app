import 'package:flutter/material.dart';

class MyOrdersWidget extends StatelessWidget {
  const MyOrdersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Amazon Bangkok",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Bangkankong, Phnom Penh",
                      style: TextStyle(
                        color: Colors.black.withOpacity(.5),
                      ),
                    )
                  ],
                ),
                Text(
                  "\$ 1.75",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 100,
            child: Divider(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Ice Amazone x 1, Ice Cappuccino x 2"),
              SizedBox(height: 5),
              Text(
                '01 Mar 2024, 05:11PM',
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                ),
              )
            ],
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: OutlinedButton(
              onPressed: () {},
              child: Text("Re-Order"),
              style: OutlinedButton.styleFrom(
                shadowColor: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14)),
                side: BorderSide(
                  width: 2,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
