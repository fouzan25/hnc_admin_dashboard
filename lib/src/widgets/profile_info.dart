import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/constants/constants.dart';
import 'package:hnc_admin_dashboard/src/constants/responsive.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.all(appPadding),
          child: Icon(Icons.notifications_active),
        ),
        Container(
          margin: const EdgeInsets.only(left: appPadding),
          padding: const EdgeInsets.symmetric(
            horizontal: appPadding,
            vertical: appPadding / 2,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              "assets/images/profile.jpg",
              height: 38,
              width: 38,
              fit: BoxFit.cover,
            ),
          ),
        ),
        if (!Responsive.isMobile(context))
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: appPadding / 2),
            child: Text(
              "hi user_001",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: textColor,
              ),
            ),
          )
      ],
    );
  }
}
