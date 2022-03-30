import 'package:final_krishi/Kbussiness/page/popularpage.dart';
import 'package:final_krishi/Kbussiness/page/vegetablespage.dart';
import 'package:flutter/material.dart';

import '../Bottom Nav Bar/coustom_bottom_nav_bar.dart';
import '../enums.dart';

class BusinessListView extends StatefulWidget {
  static String routeName = "/business";
  const BusinessListView({Key? key}) : super(key: key);

  @override
  State<BusinessListView> createState() => _BusinessListViewState();
}

class _BusinessListViewState extends State<BusinessListView>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 8, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text("Krishi Pathsala"),
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
              text: "POPULAR",
            ),
            Tab(
              text: "HERBS",
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
            Tab(
              text: "TREE",
            ),
            Tab(
              text: "CROPS",
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
          Container(
            child: Center(
              child: Text('Tab 6'),
            ),
          ),
          Container(
            child: Center(
              child: Text('Tab 6'),
            ),
          ),
          Container(
            child: Center(
              child: Text('Tab 6'),
            ),
          ),
        ],
      ),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.business),
    );
  }
}
