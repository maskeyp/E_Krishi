import 'package:final_krishi/Bottom%20Nav%20Bar/shop.dart';
import 'package:final_krishi/contacts/contacts.dart';

//import 'package:final_krishi/splash.dart';

//import 'package:final_krishi/Screens/sign_up/sign_up_screen.dart';

import 'package:flutter/widgets.dart';

import 'Kbussiness/kbusiness.dart';
// import 'Screens/complete_profile/complete_profile_screen.dart';
// import 'Screens/forgot_password/forgot_password_screen.dart';
// import 'Screens/login_success/login_success_screen.dart';
// import 'Screens/otp/otp_screen.dart';
// import 'Screens/sign_in/sign_in_screen.dart';
// import 'Screens/splashScreen/splash_screen.dart';
import 'cart/screens/home_screen.dart';
import 'profile/profile_screen.dart';

import 'mounts_app.dart';

// We use name route
// All our routes will be available here
Map<String, WidgetBuilder> routes = {
  // SplashScreen.routeName: (context) => SplashScreen(),
//  SignInScreen.routeName: (context) => SignInScreen(),
  // ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  // LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  // SignUpScreen.routeName: (context) => SignUpScreen(),
  // CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  // OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
//DetailsScreen.routeName: (context) => DetailsScreen(),
  KrishiShop.routeName: (context) => KrishiShop(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  BusinessListView.routeName: (context) => BusinessListView(),
  CartHomeScreen.routeName: (context) => CartHomeScreen(),
  Contacts.routeName: (context) => Contacts(),
};
