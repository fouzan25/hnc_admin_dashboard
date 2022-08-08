import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/constants/constants.dart';

class DrawerListTile extends StatelessWidget {
  final String title;
  final IconData iconsData;
  final VoidCallback onPressHandler;
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.iconsData,
    required this.onPressHandler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressHandler,
      horizontalTitleGap: 0,
      hoverColor: secondaryColor.withOpacity(0.2),
      leading: Icon(
        iconsData,
        color: grey,
        size: 20,
      ),
      title: Text(
        title,
        style: const TextStyle(color: grey),
      ),
    );
  }
}
