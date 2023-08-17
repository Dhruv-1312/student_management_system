import 'package:flutter/material.dart';
import 'package:student_management_system/constants.dart';
import 'package:student_management_system/screens/fee_Screen/data/fee_data.dart';

class FeeScreen extends StatelessWidget {
  const FeeScreen({super.key});
  static String routeName = 'FeeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding),
                  topRight: Radius.circular(kDefaultPadding),
                ),
                color: kOtherColor,
              ),
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.all(kDefaultPadding),
                  itemCount: fee.length,
                  itemBuilder: (context, int index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: kDefaultPadding),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(kDefaultPadding),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(kDefaultPadding),
                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: kTextLightColor,
                                  blurRadius: 2.0,
                                )
                              ],
                            ),
                            child: Column(
                              children: [
                                FeeDataIn(
                                    title: 'Assignment no.',
                                    value: fee[index].AssignmentNo),
                                SizedBox(
                                  height: kDefaultPadding,
                                  child: Divider(
                                    thickness: 1.0,
                                  ),
                                ),
                                FeeDataIn(
                                    title: 'Month', value: fee[index].Month),
                                sizedBox,
                                FeeDataIn(
                                    title: 'Date', value: fee[index].Date),
                                sizedBox,
                                FeeDataIn(
                                    title: 'Status', value: fee[index].status),
                                sizedBox,
                                SizedBox(
                                  height: kDefaultPadding,
                                  child: Divider(
                                    thickness: 1.0,
                                  ),
                                ),
                                FeeDataIn(
                                    title: 'LastDate',
                                    value: fee[index].LateDate),
                                sizedBox,
                              ],
                            ),
                          ),
                          FeeTable(
                            title: fee[index].btn,
                            onPress: () {},
                            iconData: fee[index].status == 'pending'
                                ? Icons.download_outlined
                                : Icons.arrow_forward_outlined,
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}

class FeeDataIn extends StatelessWidget {
  const FeeDataIn({super.key, required this.title, required this.value});
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 14.0,
                color: kTextLightColor,
              ),
        ),
        Text(
          value,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontSize: 14.0,
              color: kTextBlackColor,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}

class FeeTable extends StatelessWidget {
  const FeeTable(
      {super.key,
      required this.title,
      required this.onPress,
      required this.iconData});
  final String title;
  final IconData iconData;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        height: 40.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              kSecondaryColor,
              kPrimaryColor,
            ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(0.5, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(kDefaultPadding),
            bottomRight: Radius.circular(kDefaultPadding),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 19.0,
                  ),
            ),
            Icon(
              iconData,
              color: kOtherColor,
              size: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
