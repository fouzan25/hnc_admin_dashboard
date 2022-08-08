import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/constants/constants.dart';
import 'package:hnc_admin_dashboard/src/constants/hnc_icons_icons.dart';
import 'package:hnc_admin_dashboard/src/widgets/drawer_list_tile.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryColor,
      child: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            color: secondaryColor,
            padding: const EdgeInsets.all(appPadding),
            child: Image.asset(
              "assets/images/hnc_logo.png",
              scale: 5,
            ),
          ),
          DrawerListTile(
              title: "DashBoard",
              iconsData: Icons.dashboard,
              onPressHandler: () {}),
          DrawerListTile(
              title: "Branches",
              iconsData: HncIcons.outlet,
              onPressHandler: () {}),
          DrawerListTile(
              title: "Users",
              iconsData: Icons.verified_user_sharp,
              onPressHandler: () {}),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: appPadding * 2),
            child: Divider(
              color: grey,
              thickness: 1,
            ),
          ),
          DrawerListTile(
              title: "Settings",
              iconsData: HncIcons.app_settings,
              onPressHandler: () {}),
          DrawerListTile(
            title: "Logout",
            iconsData: Icons.logout,
            onPressHandler: () {},
          ),
        ],
      ),
    );
  }
}
