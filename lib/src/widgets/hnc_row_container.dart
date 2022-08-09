import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/constants/constants.dart';

class HncRowContainer extends StatelessWidget {
  final List<Widget> childrenList;
  final CrossAxisAlignment crossAxisValue;
  const HncRowContainer({
    Key? key,
    required this.childrenList,
    this.crossAxisValue = CrossAxisAlignment.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(appPadding),
      child: Row(
        crossAxisAlignment: crossAxisValue,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: childrenList,
      ),
    );
  }
}
