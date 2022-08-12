import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/router/ui_page.dart';

class HncParser extends RouteInformationParser<PageConfiguration> {
  @override
  Future<PageConfiguration> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location!);
    if (uri.pathSegments.isEmpty) {
      return splashPageConfig;
    }

    final path = uri.pathSegments[0];

    switch (path) {
      case splashPath:
        return splashPageConfig;
      case loginPath:
        return loginPageConfig;
      case dashboardPath:
        return dashboardPageConfig;
      case branchPath:
        return branchPageConfig;
      case userPath:
        return userPageConfig;
      case settingsPath:
        return settingsPageConfig;
      default:
        return splashPageConfig;
    }
  }

  @override
  RouteInformation restoreRouteInformation(PageConfiguration configuration) {
    switch (configuration.uiPage) {
      case Pages.splashPage:
        return const RouteInformation(location: splashPath);

      case Pages.loginPage:
        return const RouteInformation(location: loginPath);

      case Pages.dashboardPage:
        return const RouteInformation(location: dashboardPath);

      case Pages.branchPage:
        return const RouteInformation(location: branchPath);

      case Pages.userPage:
        return const RouteInformation(location: userPath);

      case Pages.settingsPage:
        return const RouteInformation(location: settingsPath);
    }
  }
}
