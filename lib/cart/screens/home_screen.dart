import 'dart:convert';
import 'package:final_krishi/cart/screens/cart_screen.dart';
import 'package:final_krishi/Bottom%20Nav%20Bar/coustom_bottom_nav_bar.dart';
import 'package:final_krishi/enums.dart';
import 'package:flutter/material.dart';
import 'package:final_krishi/cart/core/my_store.dart';
import 'package:final_krishi/cart/widgets/home_widgets/catalog_list.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/cart.dart';
import '../models/catalog.dart';
import '../widgets/home_widgets/catalog_header.dart';

// ignore: must_be_immutable
class CartHomeScreen extends StatefulWidget {
  static String routeName = "/message";
  //const CartHomeScreen({Key? key}) : super(key: key);

  @override
  _CartHomeScreenState createState() => _CartHomeScreenState();
}

class _CartHomeScreenState extends State<CartHomeScreen> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final stringData = await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(stringData);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: VxBuilder(
        mutations: {AddMutation, RemoveMutation},
        builder: (context, _, status) => FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CartScreen()),
            );
          },
          backgroundColor: context.theme.primaryColor,
          child: Icon(
            CupertinoIcons.cart,
            color: Colors.white,
          ),
        ).badge(
          color: Vx.white,
          size: 22.0,
          count: _cart!.items.length,
          textStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: 360,
          padding: Vx.m12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              // ignore: unnecessary_null_comparison
              if (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
                CatalogList().py16().expand()
              else
                Center(
                  child: CircularProgressIndicator(),
                )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.message),
    );
  }
}
