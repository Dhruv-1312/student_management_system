import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:student_management_system/constants.dart';

class SignButton extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  final IconData iconData;

  const SignButton(
      {super.key,
      required this.iconData,
      required this.title,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        height: 60.0,
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
        ),
        padding: EdgeInsets.only(right: kDefaultPadding),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [kSecondaryColor, kPrimaryColor],
              begin: const FractionalOffset(0.1, 0.0),
              end: const FractionalOffset(0.5, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
          borderRadius: BorderRadius.circular(kDefaultPadding),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontWeight: FontWeight.w700, fontSize: 17.0),
            ),
            Spacer(),
            Icon(iconData, size: 30.0, color: kOtherColor)
          ],
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ObjectFlagProperty<VoidCallback>.has('onPress', onPress));
    properties.add(ObjectFlagProperty<VoidCallback>.has('onPress', onPress));
  }
}
