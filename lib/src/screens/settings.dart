import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/constants/constants.dart';
import 'package:hnc_admin_dashboard/src/constants/responsive.dart';
import 'package:hnc_admin_dashboard/src/providers/controller.dart';
import 'package:hnc_admin_dashboard/src/router/ui_page.dart';
import 'package:hnc_admin_dashboard/src/widgets/%20custom_app_bar.dart';
import 'package:hnc_admin_dashboard/src/widgets/drawer_menu.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  static const routeName = "/settings_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      key: Provider.of<Controller>(context, listen: false).scaffoldKeySettings,
      backgroundColor: bgColor.withOpacity(0.5),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                child: DrawerMenu(),
              ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(appPadding),
                child: Column(
                  children: const [
                    CustomAppBar(
                      page: Pages.settingsPage,
                    ),
                    Center(
                      child: Text("settings"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
