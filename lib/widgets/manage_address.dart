import 'package:flutter/material.dart';

class AddressWidget extends StatelessWidget {
  final String location;
  final Icon icon;
  final String lableText;

  const AddressWidget({
    super.key,
    required this.location,
    required this.icon,
    required this.lableText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              icon,
              SizedBox(width: 10),
              Text(
                lableText,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            location,
            style: TextStyle(
              color: Colors.black.withOpacity(.5),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text("Edit"),
                  style: OutlinedButton.styleFrom(
                    shadowColor: Colors.red,
                    side: BorderSide(
                      width: 2,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text("Delete"),
                  style: OutlinedButton.styleFrom(
                    shadowColor: Colors.red,
                    side: BorderSide(
                      width: 2,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
