import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:food_app/widgets/promos_tab.dart';
import 'package:food_app/widgets/restaurant_tab.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({super.key});

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              TabBar(
                tabs: [
                  Tab(text: "Restaurant"),
                  Tab(text: "PROMOS"),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    RestaurantTab(),
                    PromoTab(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
