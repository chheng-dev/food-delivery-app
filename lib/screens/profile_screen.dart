import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/screens/manage_address_screen.dart';
import 'package:food_app/screens/my_orders_screen.dart';
import 'package:food_app/widgets/add_payment_card.dart';
import 'package:food_app/widgets/menu_profile_page.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // color: Colors.grey.shade200,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Chheng Dev",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "chheng@vtenh.com",
                          style: TextStyle(
                            color: Colors.grey.shade700,
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () => _showModalBottomSheet(context),
                      child: Text(
                        "Edit".toUpperCase(),
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                MenuProfilePage(
                  title: "My Orders",
                  icon: Icon(CupertinoIcons.cart),
                  onTab: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyOrdersScreen(),
                      ),
                    );
                  },
                ),
                MenuProfilePage(
                  title: "Manage Address",
                  icon: Icon(CupertinoIcons.home),
                  onTab: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ManageAddressScreen(),
                      ),
                    );
                  },
                ),
                MenuProfilePage(
                  title: "Payment",
                  icon: Icon(Icons.payment),
                  onTab: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddPaymentCard(),
                      ),
                    );
                  },
                ),
                MenuProfilePage(
                  title: "Favourites",
                  icon: Icon(CupertinoIcons.heart),
                  onTab: () {},
                ),
                MenuProfilePage(
                  title: "Help",
                  icon: Icon(Icons.help),
                  onTab: () {},
                ),
                MenuProfilePage(
                  title: "Logout",
                  icon: Icon(Icons.logout),
                  onTab: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: SingleChildScrollView(
              child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 18),
                  child: Form(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Edit Account'.toUpperCase(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text("Mobile Phone"),
                        SizedBox(height: 10),
                        IntlPhoneField(
                          onChanged: (value) => {
                            print(value),
                          },
                          initialCountryCode: 'KH',
                          decoration: InputDecoration(
                            hintText: "Enter Phone Number",
                            labelText: "0xx-xxxx-xxx",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                          ),
                        ),
                        Text("Email"),
                        SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                              hintText: "Enter Email Address",
                              labelText: "example@gmail.com",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(),
                              )),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: double.maxFinite,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                            ),
                            child: Text(
                              "Continue".toUpperCase(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
