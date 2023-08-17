import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:student_management_system/constants.dart';
import 'package:student_management_system/screens/Assignment_screen/Assignment_screen.dart';
import 'package:student_management_system/screens/HomeScreen/widget/student_data.dart';
import 'package:student_management_system/screens/fee_Screen/fee_Screen.dart';
import 'package:student_management_system/screens/profile_screen/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StudentData(
                          studentName: 'Sanskar',
                        ),
                        SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        StudentSection(
                            section: 'Section 2-A BCA | Rollno: 047'),
                        SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                        StudentYear(year: '2022-2025'),
                        SizedBox(
                          height: kDefaultPadding / 2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: kDefaultPadding / 6,
                    ),
                    StudentPhoto(
                      photo: 'assets/images/sanskar.jpg',
                      onPress: () {
                        Navigator.pushNamed(context, MyProfile.routeName);
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    StudentDataCard(
                      att: 'Attendence',
                      per: '85.43%',
                      onPress: () {},
                    ),
                    StudentDataCard(
                      att: 'Notes',
                      per: '3rd Sem',
                      onPress: () {
                        Navigator.pushNamed(context, FeeScreen.routeName);
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: kOtherColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding * 3),
                    topRight: Radius.circular(kDefaultPadding * 3),
                  ),
                ),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                            onPress: () {
                              Navigator.pushNamed(
                                  context, AssignmentScreen.routeName);
                            },
                            icon: 'assets/images/askme.json',
                            title: 'Assignment'),
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/images/ani1.json',
                            title: 'Ask'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/images/ani2.json',
                            title: 'TimeTable'),
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/images/ani3.json',
                            title: 'Result'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/images/ani4.json',
                            title: 'DateSheet'),
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/images/ani5.json',
                            title: 'Events'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/images/ani12.json',
                            title: 'Leave App'),
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/images/ani14.json',
                            title: 'Chat Us'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/images/anilock.json',
                            title: 'Reset pass'),
                        HomeCard(
                            onPress: () {},
                            icon: 'assets/images/ani13.json',
                            title: 'Log Out'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard(
      {super.key,
      required this.onPress,
      required this.icon,
      required this.title});
  final VoidCallback onPress;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(kDefaultPadding / 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(icon, height: 90.0, width: 90.0),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            SizedBox(
              height: kDefaultPadding / 3,
            ),
          ],
        ),
      ),
    );
  }
}
