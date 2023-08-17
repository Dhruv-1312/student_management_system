import 'package:flutter/material.dart';
import 'package:student_management_system/screens/login_page/Login_page.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = 'SplashScreen';

  @override
  Widget build(BuildContext context) {
    // Navigate after a delay
    Future<void> navigateToLogin() async {
      await Future.delayed(Duration(seconds: 5));
      Navigator.pushNamedAndRemoveUntil(
          context, LoginScreen.routeName, (route) => false);
    }

    navigateToLogin(); // Call the navigation function

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/back.png',
              // Adjust the image height as needed
              height: 810, // Example height, change as needed
            ),
          ],
        ),
      ),
    );
  }
}
