import 'package:final_krishi/Screens/Drawer/drawer_final.dart';
import 'package:final_krishi/theme.dart';

import 'package:flutter/material.dart';
import 'Screens/Drawer/drawer_final.dart';
import 'Bottom Nav Bar/coustom_bottom_nav_bar.dart';
import 'enums.dart';

import 'app_mount_listview.dart';
import 'app_search.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.cream,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: <Widget>[
          // sliver app bar
          SliverAppBar(
            expandedHeight: 200,
            backgroundColor: Colors.green,
            // leading: Icon(
            //   Icons.menu,
            // ),

            floating: true,
            pinned: true,
            snap: true,
            stretch: true,
            // onStretchTrigger: (),
            actionsIconTheme: IconThemeData(opacity: 0.0),
            flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text('E - K R I S H I'),
                background: Image.asset(
                  "assets/images/appbar.jpg",
                  fit: BoxFit.cover,
                ),
                stretchModes: const <StretchMode>[
                  StretchMode.zoomBackground,
                  StretchMode.blurBackground,
                  StretchMode.fadeTitle,
                ]),
          ),

          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                top: 10.0,
                left: 2,
                right: 2,
              ),
              child: AppSearch(),
            ),
          ),

          // sliver items 2
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                top: 10.0,
                left: 2.0,
                right: 2.0,
              ),
              child: AppMountListView(),
            ),
          ),
          //sliver items 3
          // const SliverToBoxAdapter(
          //   child: Padding(
          //     padding: EdgeInsets.only(
          //       left: 10.0,
          //       right: 2.0,
          //     ),
          //     child: AppCategoryList(),
          //   ),
          // ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
      drawer: CustomDrawer(),
    );
  }
}
