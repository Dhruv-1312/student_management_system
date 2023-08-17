import 'package:flutter/material.dart';
import 'package:student_management_system/constants.dart';
import 'package:student_management_system/screens/Assignment_screen/data/assignment_data.dart';

class AssignmentScreen extends StatelessWidget {
  const AssignmentScreen({super.key});
  static String routeName = 'AssignmetScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignment'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: kOtherColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding),
                  topRight: Radius.circular(kDefaultPadding),
                ),
              ),
              child: ListView.builder(
                itemCount: assignment.length,
                itemBuilder: (context, int index) {
                  return Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(kDefaultPadding),
                            color: kOtherColor,
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: 100,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: kSecondaryColor.withOpacity(0.4),
                                  borderRadius:
                                      BorderRadius.circular(kDefaultPadding),
                                ),
                                child: Center(
                                  child: Text(assignment[index].subjectName,
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400,
                                        color: kPrimaryColor,
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: kDefaultPadding / 2,
                              ),
                              Text(
                                assignment[index].topicName,
                                style: TextStyle(
                                  color: kTextBlackColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.0,
                                ),
                              ),
                              SizedBox(height: kDefaultPadding),
                              RawData(
                                  assign: 'AssignDate',
                                  last: assignment[index].assignDate),
                              SizedBox(
                                height: kDefaultPadding / 2,
                              ),
                              RawData(
                                  assign: 'LastDate',
                                  last: assignment[index].lastDate),
                              SizedBox(
                                height: kDefaultPadding / 2,
                              ),
                              RawData(
                                  assign: 'Status',
                                  last: assignment[index].status),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RawData extends StatelessWidget {
  const RawData({super.key, required this.assign, required this.last});
  final String assign;
  final String last;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          assign,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: kTextLightColor,
          ),
        ),
        Text(
          last,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: kTextBlackColor,
          ),
        ),
      ],
    );
  }
}
