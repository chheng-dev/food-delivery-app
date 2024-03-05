import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/widgets/manage_address.dart';

class ManageAddressScreen extends StatelessWidget {
  const ManageAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text(
          "Manage Address",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 14),
              child: Column(
                children: [
                  AddressWidget(
                      location:
                          "SH-19, The Fortune Tower (C7) Olympia City, Phnom Penh",
                      icon: Icon(CupertinoIcons.home),
                      lableText: "Home"),
                  SizedBox(height: 10),
                  AddressWidget(
                      location:
                          'Vimean Aha 6th Floor, Virak Buntham Building, Street, Phnom Penh 121001',
                      icon: Icon(Icons.work),
                      lableText: 'Work'),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: SizedBox(
                      width: double.maxFinite,
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Add New'),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
