import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/constants/constants.dart';

class HeadingContainer extends StatelessWidget {
  const HeadingContainer(
      {Key? key, required this.headingContainerColor, required this.title})
      : super(key: key);
  final Color headingContainerColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        color: headingContainerColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(appPadding),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: textColor.withOpacity(0.5),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
