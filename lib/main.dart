import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_management_system/constants.dart';
import 'package:student_management_system/route.dart';
import 'package:student_management_system/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vips Social',
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          primaryColor: kPrimaryColor,
          appBarTheme: AppBarTheme(
            color: kPrimaryColor,
            elevation: 0.0,
          ),
          textTheme: GoogleFonts.sourceSansProTextTheme(
            Theme.of(context).textTheme.apply().copyWith(
                  bodyLarge: TextStyle(
                      color: kTextWhiteColor,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold),
                  bodyMedium: TextStyle(
                      color: kTextWhiteColor,
                      fontSize: 29.0,
                      fontWeight: FontWeight.bold),
                  titleSmall: TextStyle(
                      color: kTextWhiteColor,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600),
                  titleMedium: TextStyle(
                      color: kTextWhiteColor,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500),
                ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            labelStyle: TextStyle(
              fontSize: 20.0,
              color: kTextLightColor,
              height: 0.5,
            ),
            hintStyle: TextStyle(
              fontSize: 16.0,
              color: kTextBlackColor,
              height: 0.5,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kTextLightColor,
                width: 0.7,
              ),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kTextLightColor,
              ),
            ),
            disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
              color: kTextLightColor,
            )),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kPrimaryColor,
              ),
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kErrorBorderColor,
                width: 1.2,
              ),
            ),
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kErrorBorderColor,
                width: 1.2,
              ),
            ),
          )),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
