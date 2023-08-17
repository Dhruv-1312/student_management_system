import 'package:flutter/material.dart';
import 'package:student_management_system/constants.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});
  static String routeName = 'MyProfile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'MyProfile',
          style: Theme.of(context).textTheme.titleSmall,
        )),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.only(right: kDefaultPadding / 2),
              child: Row(
                children: [
                  Icon(Icons.report_gmailerrorred_outlined),
                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),
                  Text(
                    'Report',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      body: Container(
        color: kOtherColor,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(kDefaultPadding * 2),
                  bottomRight: Radius.circular(kDefaultPadding * 2),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    maxRadius: 50.0,
                    minRadius: 50.0,
                    backgroundColor: kSecondaryColor,
                    backgroundImage: AssetImage('assets/images/sanskar.jpg'),
                  ),
                  SizedBox(
                    width: kDefaultPadding,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sanskar',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Text(
                        'Section: 2-A BCA | Rollno: 047',
                        style:
                            Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontSize: 14.0,
                                ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            sizedBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileIn(title: 'Enrollment Number', value: '04717702022'),
                ProfileIn(title: 'Academic Year', value: '2022-2025'),
              ],
            ),
            sizedBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileIn(title: 'Section', value: '2-A'),
                ProfileIn(title: 'Mobile Number', value: '8459054426'),
              ],
            ),
            sizedBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProfileIn(title: 'Admission Date', value: '17-08-2022'),
                ProfileIn(title: 'Date of Birth', value: '21-Dec-2001'),
              ],
            ),
            ProfileDetails(title: 'Email', value: 'Sanskarverma982@gmail.com'),
            ProfileDetails(title: 'Father Name', value: 'Charanjeet Verma'),
            ProfileDetails(title: 'Mother Name', value: 'Manju Verma'),
          ],
        ),
      ),
    );
  }
}

class ProfileIn extends StatelessWidget {
  const ProfileIn({super.key, required this.title, required this.value});
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          right: kDefaultPadding / 4,
          left: kDefaultPadding / 4,
          top: kDefaultPadding / 2),
      width: MediaQuery.of(context).size.width / 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: kTextLightColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
              ),
              SizedBox(
                height: kDefaultPadding / 2,
              ),
              Text(
                value,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: kTextBlackColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
              ),
              SizedBox(
                height: kDefaultPadding / 2,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: Divider(
                  thickness: 1.0,
                ),
              ),
            ],
          ),
          Icon(
            Icons.lock_outline,
            size: 20.0,
          ),
        ],
      ),
    );
  }
}

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key, required this.title, required this.value});
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: kTextLightColor,
                      fontSize: 15.0,
                    ),
              ),
              SizedBox(
                height: kDefaultPadding / 2,
              ),
              Text(
                value,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: kTextBlackColor,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              SizedBox(
                height: kDefaultPadding / 2,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Divider(
                  thickness: 1.0,
                ),
              )
            ],
          ),
          Icon(
            Icons.lock_outline,
            size: 20.0,
          ),
        ],
      ),
    );
  }
}
