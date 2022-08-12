import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/router/ui_page.dart';

class Controller extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _scaffoldKeyHome = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> _scaffoldKeyBranch =
      GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> _scaffoldKeyUser = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> _scaffoldKeySettings =
      GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKeyHome => _scaffoldKeyHome;
  GlobalKey<ScaffoldState> get scaffoldKeyBranch => _scaffoldKeyBranch;
  GlobalKey<ScaffoldState> get scaffoldKeyUser => _scaffoldKeyUser;
  GlobalKey<ScaffoldState> get scaffoldKeySettings => _scaffoldKeySettings;

  void controlMenu(Pages page) {
    switch (page) {
      case Pages.splashPage:
        break;
      case Pages.loginPage:
        break;
      case Pages.dashboardPage:
        toggleDrawer(key: scaffoldKeyHome);
        break;
      case Pages.branchPage:
        toggleDrawer(key: scaffoldKeyBranch);
        break;
      case Pages.userPage:
        toggleDrawer(key: scaffoldKeyUser);
        break;
      case Pages.settingsPage:
        toggleDrawer(key: scaffoldKeySettings);
        break;
    }
  }

  void toggleDrawer({
    required GlobalKey<ScaffoldState> key,
  }) {
    if (!key.currentState!.isDrawerOpen) {
      key.currentState!.openDrawer();
    }
  }
}
