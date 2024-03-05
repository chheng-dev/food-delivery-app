import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/widgets/custom_textfield.dart';

class AddPaymentCard extends StatelessWidget {
  const AddPaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text(
          "Add New Card",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          height: 420,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12)),
          ),
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 14),
          child: Column(
            children: [
              TextFieldWidget(
                text: "Card Number",
                hintText: "Card Number",
                obscureText: false,
                suffixIcon: Icon(Icons.payment),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: TextFieldWidget(
                      text: "Valid upto (MM/YY)",
                      hintText: "MM/YY",
                      obscureText: false,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextFieldWidget(
                      text: "CVV",
                      hintText: "CVV",
                      obscureText: false,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              TextFieldWidget(
                text: "Name on Card",
                hintText: "Jonh Dev",
                obscureText: false,
                suffixIcon: Icon(Icons.payment),
              ),
              SizedBox(height: 25),
              Container(
                width: double.maxFinite,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Proceed".toUpperCase(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
