import 'package:final_krishi/contacts/Agrofarm/agrofarms.dart';
import 'package:final_krishi/contacts/Agrofarm/fish_farm.dart';
import 'package:final_krishi/contacts/agrovet_suppliers/agrovets.dart';

import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  static String routeName = "/contacts";
  @override
  _ContactsState createState() => _ContactsState();
}

@override
State<Contacts> createState() => _ContactsState();

class _ContactsState extends State<Contacts>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text("Contacts"),
        // actions: [
        //   IconButton(icon: Icon(Icons.search), onPressed: () {}),
        // ],
        bottom: TabBar(
          isScrollable: true,
          controller: _controller,
          unselectedLabelColor: Colors.white.withOpacity(0.3),
          indicatorColor: Colors.black,
          tabs: [
            Tab(
              text: "Agro Farms",
            ),
            Tab(
              text: "Suppliers",
            ),
            Tab(
              text: "Government Department",
            ),
          ],
        ),
      ),

      //       width: 250,
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          Container(
            child: AgroFarm(),
          ),
          Container(
            child: Center(
              child: AgroVets(),
            ),
          ),
          Container(
            child: Center(
              child: FishFarm(),
            ),
          ),
        ],
      ),
    );
  }
}
