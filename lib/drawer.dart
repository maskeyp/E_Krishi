// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import 'package:velocity_x/velocity_x.dart';

// class MyDrawer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final imageUrl =
//         "https://2.bp.blogspot.com/-Ym66_-xYJnQ/VCbAgrzxivI/AAAAAAAAALc/wc62Sj_pfBo/s1600/85a8dd79663e6f4316862011ec2ac893.jpg";
//     return Drawer(
//       child: Container(
//         color: Colors.green[700],
//         child: ListView(
//           padding: EdgeInsets.only(top: 10.0),
//           children: [
//             DrawerHeader(
//               padding: EdgeInsets.zero,
//               child: UserAccountsDrawerHeader(
//                 margin: EdgeInsets.zero,
//                 accountName: Text("Maskey"),
//                 accountEmail: Text("maskeypawan123@gmail.com"),
//                 currentAccountPicture: CircleAvatar(
//                   backgroundImage: NetworkImage(imageUrl),
//                 ),
//               ),
//             ).p8(),
//             Expanded(
//               child: VxArc(
//                   height: 18.0,
//                   edge: VxEdge.TOP,
//                   arcType: VxArcType.CONVEY,
//                   child: Container(
//                     color: Colors.blueGrey[800],
//                     height: context.screenHeight,
//                     child: Column(
//                       children: [
//                         Padding(padding: EdgeInsets.only(top: 25)),
//                         ListTile(
//                           leading: Icon(
//                             CupertinoIcons.app_badge,
//                             color: Colors.white,
//                             size: 30,
//                           ),
//                           title: Text("Home",
//                               textScaleFactor: 1.3,
//                               style: TextStyle(
//                                 color: Colors.white,
//                               )),
//                         ),
//                         ListTile(
//                           leading: Icon(
//                             CupertinoIcons.person,
//                             color: Colors.white,
//                             size: 30,
//                           ),
//                           title: Text(
//                             "Profile",
//                             textScaleFactor: 1.3,
//                             style: TextStyle(
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                         ListTile(
//                           leading: Icon(
//                             CupertinoIcons.bubble_right,
//                             color: Colors.white,
//                             size: 30,
//                           ),
//                           title: Text(
//                             "Inbox",
//                             textScaleFactor: 1.3,
//                             style: TextStyle(
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                         ListTile(
//                           leading: Icon(
//                             CupertinoIcons.cloud_sun,
//                             color: Colors.white,
//                             size: 30,
//                           ),
//                           title: Text(
//                             "Weather",
//                             textScaleFactor: 1.3,
//                             style: TextStyle(
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                         ListTile(
//                           leading: Icon(
//                             CupertinoIcons.news,
//                             color: Colors.white,
//                             size: 30,
//                           ),
//                           title: Text(
//                             "News",
//                             textScaleFactor: 1.3,
//                             style: TextStyle(
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                         ListTile(
//                           leading: Icon(
//                             CupertinoIcons.phone,
//                             color: Colors.white,
//                             size: 30,
//                           ),
//                           title: Text(
//                             "Phone",
//                             textScaleFactor: 1.3,
//                             style: TextStyle(
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                         ListTile(
//                           leading: Icon(
//                             CupertinoIcons.bag,
//                             color: Colors.white,
//                             size: 30,
//                           ),
//                           title: Text(
//                             "Tarkari Bazar",
//                             textScaleFactor: 1.3,
//                             style: TextStyle(
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                         ListTile(
//                           leading: Icon(
//                             CupertinoIcons.question_circle,
//                             color: Colors.white,
//                             size: 30,
//                           ),
//                           title: Text(
//                             "FAQ",
//                             textScaleFactor: 1.3,
//                             style: TextStyle(
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   )),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
