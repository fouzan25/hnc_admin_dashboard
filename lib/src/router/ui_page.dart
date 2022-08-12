import 'package:hnc_admin_dashboard/src/providers/app_state.dart';

const String splashPath = '/splash';
const String loginPath = '/login';
const String dashboardPath = '/dashboard';
const String branchPath = '/branch';
const String userPath = '/user';
const String settingsPath = '/settings';

enum Pages {
  splashPage,
  loginPage,
  dashboardPage,
  branchPage,
  userPage,
  settingsPage,
}

class PageConfiguration {
  final String key;
  final String path;
  final Pages uiPage;
  PageAction? currentPageAction;

  PageConfiguration({
    required this.key,
    required this.path,
    required this.uiPage,
    this.currentPageAction,
  });
}

PageConfiguration splashPageConfig = PageConfiguration(
  key: 'Splash',
  path: splashPath,
  uiPage: Pages.splashPage,
  currentPageAction: null,
);
PageConfiguration loginPageConfig = PageConfiguration(
  key: 'Login',
  path: loginPath,
  uiPage: Pages.loginPage,
  currentPageAction: null,
);
PageConfiguration dashboardPageConfig = PageConfiguration(
  key: 'Dashboard',
  path: dashboardPath,
  uiPage: Pages.dashboardPage,
  currentPageAction: null,
);
PageConfiguration branchPageConfig = PageConfiguration(
  key: 'Branch',
  path: branchPath,
  uiPage: Pages.branchPage,
  currentPageAction: null,
);
PageConfiguration userPageConfig = PageConfiguration(
  key: 'User',
  path: userPath,
  uiPage: Pages.userPage,
  currentPageAction: null,
);
PageConfiguration settingsPageConfig = PageConfiguration(
  key: 'Settings',
  path: settingsPath,
  uiPage: Pages.settingsPage,
  currentPageAction: null,
);
