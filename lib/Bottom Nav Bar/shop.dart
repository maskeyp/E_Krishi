import 'package:final_krishi/Kbussiness/page/popularpage.dart';
import 'package:final_krishi/Kbussiness/page/vegetablespage.dart';
import 'package:flutter/material.dart';

import 'coustom_bottom_nav_bar.dart';
import '../enums.dart';

class KrishiShop extends StatefulWidget {
  static String routeName = "/shop";
  const KrishiShop({Key? key}) : super(key: key);

  @override
  State<KrishiShop> createState() => _KrishiShopState();
}

class _KrishiShopState extends State<KrishiShop>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 5, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 123, 0),
        title: Text("K R I S H I  B A Z A R"),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
        bottom: TabBar(
          isScrollable: true,
          controller: _controller,
          unselectedLabelColor: Colors.white.withOpacity(0.3),
          indicatorColor: Colors.black,
          tabs: [
            Tab(
              text: "NURSERY",
            ),
            Tab(
              text: "PESTICIDES",
            ),
            Tab(
              text: "VEGETABLES",
            ),
            Tab(
              text: "ANIMAL",
            ),
            Tab(
              text: "FLOWER",
            ),
          ],
        ),
      ),

      //       width: 250,
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          Container(
            child: PopularPage(),
          ),
          Container(
            child: Center(
              child: Text('Tab 2'),
            ),
          ),
          Container(
            child: Center(
              child: VegetablesPage(),
            ),
          ),
          Container(
            child: Center(
              child: Text('Tab 4'),
            ),
          ),
          Container(
            child: Center(
              child: Text('Tab 5'),
            ),
          ),
        ],
      ),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.shop),
    );
  }
}
