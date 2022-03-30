import 'package:final_krishi/Bottom%20Nav%20Bar/coustom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import '../enums.dart';
import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text("Profile"),
        //use .tr for backend
      ),
      body: Body(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
