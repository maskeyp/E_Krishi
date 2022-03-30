import 'package:final_krishi/Controler/appController.dart';

// import 'package:final_krishi/Screens/splashScreen/splash_screen.dart';
import 'package:final_krishi/mounts_app.dart';
import 'package:final_krishi/theme.dart';

//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'Controler/authController.dart';

import 'cart/core/my_store.dart';

import 'constants/firebase.dart';
import 'mounts_app.dart';

import 'routes.dart';

void main(List<String> args) async {
  runApp(VxState(store: MyStore(), child: MyApp()));
  WidgetsFlutterBinding.ensureInitialized();
  await initialization.then((value) {
    Get.put(AppController());
    Get.put(UserController());
    //  Get.put(ProducsController());
    // Get.put(CartController());
    // Get.put(PaymentsController());
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // home: HomePage(), (works as route)
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.lightTheme(context),

      // theme: ThemeData(
      //   fontFamily: 'OpenSans',
      // ),

      debugShowCheckedModeBanner: false,
      home: HomeScreen(),

      routes: routes,
    );
  }
}
