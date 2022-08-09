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
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            color: textColor.withOpacity(0.8),
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
            color: headingContainerColor.withOpacity(0.8),
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
