import 'package:final_krishi/Kbussiness/screen.dart';
import 'package:final_krishi/contacts/agrovet_suppliers/machinery_suppliers.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'contacts/contacts.dart';

class AppSearch extends StatelessWidget {
  const AppSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  tooltip: 'Contacts',
                  iconSize: 30,
                  icon: SvgPicture.asset(
                    "assets/icons/phone2.svg",
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Contacts()),
                    );
                  }),
              IconButton(
                tooltip: 'tips',
                iconSize: 40,
                icon: SvgPicture.asset(
                  "assets/icons/shov.svg",
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, BusinessListView.routeName),
              ),
              IconButton(
                  tooltip: 'Contacts',
                  iconSize: 40,
                  icon: SvgPicture.asset(
                    "assets/icons/bus.svg",
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MachinerySup()),
                    );
                  }),
            ],
          )),
    );
  }
}
