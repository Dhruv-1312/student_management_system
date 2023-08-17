import 'package:flutter/material.dart';
import 'package:student_management_system/constants.dart';

class StudentData extends StatelessWidget {
  const StudentData({super.key, required this.studentName});
  final String studentName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Hi',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w200,
                fontSize: 22,
              ),
        ),
        SizedBox(
          width: 4,
        ),
        Text(
          studentName,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
        ),
      ],
    );
  }
}

class StudentSection extends StatelessWidget {
  const StudentSection({super.key, required this.section});
  final String section;
  @override
  Widget build(BuildContext context) {
    return Text(
      section,
      style: Theme.of(context).textTheme.titleSmall!.copyWith(
            fontSize: 14.0,
          ),
    );
  }
}

class StudentYear extends StatelessWidget {
  const StudentYear({super.key, required this.year});
  final String year;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 20,
      decoration: BoxDecoration(
        color: kOtherColor,
        borderRadius: BorderRadius.circular(kDefaultPadding),
      ),
      child: Center(
        child: Text(
          year,
          style: TextStyle(
              fontSize: 12.0,
              color: kTextBlackColor,
              fontWeight: FontWeight.w200),
        ),
      ),
    );
  }
}

class StudentPhoto extends StatelessWidget {
  const StudentPhoto({super.key, required this.photo, required this.onPress});
  final String photo;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: CircleAvatar(
        minRadius: 50.0,
        maxRadius: 50.0,
        backgroundColor: kSecondaryColor,
        backgroundImage: AssetImage(photo),
      ),
    );
  }
}

class StudentDataCard extends StatelessWidget {
  const StudentDataCard(
      {super.key, required this.att, required this.per, required this.onPress});
  final String att;
  final String per;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.height / 9,
        decoration: BoxDecoration(
          color: kOtherColor,
          borderRadius: BorderRadius.circular(kDefaultPadding),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              att,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 19.0,
                    color: kTextBlackColor,
                    fontWeight: FontWeight.w800,
                  ),
            ),
            Text(
              per,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 28.0,
                    color: kTextLightColor,
                    fontWeight: FontWeight.w300,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
