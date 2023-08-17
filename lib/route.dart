import 'package:flutter/material.dart';
import 'package:student_management_system/screens/Assignment_screen/Assignment_screen.dart';
import 'package:student_management_system/screens/HomeScreen/Home_Screen.dart';
import 'package:student_management_system/screens/fee_Screen/fee_Screen.dart';
import 'package:student_management_system/screens/login_page/Login_page.dart';
import 'package:student_management_system/screens/profile_screen/profile_screen.dart';
import 'package:student_management_system/screens/splash_screen/splash_screen.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  MyProfile.routeName: (context) => MyProfile(),
  FeeScreen.routeName: (context) => FeeScreen(),
  AssignmentScreen.routeName: (context) => AssignmentScreen(),
};
