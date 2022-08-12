import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/providers/app_state.dart';
import 'package:hnc_admin_dashboard/src/router/ui_page.dart';
import 'package:hnc_admin_dashboard/src/screens/branch_screen.dart';
import 'package:hnc_admin_dashboard/src/screens/home.dart';
import 'package:hnc_admin_dashboard/src/screens/login_screen.dart';
import 'package:hnc_admin_dashboard/src/screens/settings.dart';
import 'package:hnc_admin_dashboard/src/screens/splash_screen.dart';
import 'package:hnc_admin_dashboard/src/screens/users.dart';

class HncRouterDelegate extends RouterDelegate<PageConfiguration>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<PageConfiguration> {
  final List<Page> _pages = [];

  @override
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  final AppState appState;

  HncRouterDelegate(this.appState) : navigatorKey = GlobalKey() {
    appState.addListener(() {
      notifyListeners();
    });
  }

  List<MaterialPage> get pages => List.unmodifiable(_pages);
  int numPages() => _pages.length;

  @override
  PageConfiguration get currentConfiguration =>
      _pages.last.arguments as PageConfiguration;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onPopPage: _onPopPage,
      pages: buildPages(),
    );
  }

  @override
  Future<bool> popRoute() {
    if (canPop()) {
      final MaterialPage page = _pages.last as MaterialPage;
      _removePage(page);
      return Future.value(true);
    }
    return Future.value(false);
  }

  MaterialPage _createPage(Widget child, PageConfiguration pageConfig) {
    return MaterialPage(
        child: child,
        key: ValueKey(pageConfig.key),
        name: pageConfig.path,
        arguments: pageConfig);
  }

  void _addPageData(Widget child, PageConfiguration pageConfig) {
    _pages.add(
      _createPage(child, pageConfig),
    );
  }

  void addPage(PageConfiguration pageConfig) {
    final shouldAddPage = _pages.isEmpty ||
        (_pages.last.arguments as PageConfiguration).uiPage !=
            pageConfig.uiPage;
    if (shouldAddPage) {
      switch (pageConfig.uiPage) {
        case Pages.splashPage:
          _addPageData(const Splash(), splashPageConfig);
          break;
        case Pages.loginPage:
          _addPageData(LoginScreen(), loginPageConfig);
          break;
        case Pages.dashboardPage:
          _addPageData(const Home(), dashboardPageConfig);
          break;
        case Pages.branchPage:
          _addPageData(BranchScreen(), branchPageConfig);
          break;
        case Pages.userPage:
          _addPageData(const Users(), userPageConfig);
          break;
        case Pages.settingsPage:
          _addPageData(const SettingsScreen(), settingsPageConfig);
          break;

        default:
          break;
      }
    }
  }

  void replace(PageConfiguration newRoute) {
    if (_pages.isNotEmpty) {
      _pages.removeLast();
    }
    addPage(newRoute);
  }

  void setPath(List<MaterialPage> path) {
    _pages.clear();
    _pages.addAll(path);
  }

  void replaceAll(PageConfiguration newRoute) {
    setNewRoutePath(newRoute);
  }

  void push(PageConfiguration newRoute) {
    addPage(newRoute);
  }

  void pushWidget(Widget child, PageConfiguration newRoute) {
    _addPageData(child, newRoute);
  }

  List<Page> buildPages() {
    if (!appState.splashFinished) {
      replaceAll(splashPageConfig);
    } else {
      switch (appState.currentAction.state) {
        case PageState.none:
          break;
        case PageState.addPage:
          _setPageAction(appState.currentAction);
          addPage(appState.currentAction.page!);
          break;
        case PageState.addAll:
          addAll(appState.currentAction.pages!);
          break;
        case PageState.addWidget:
          _setPageAction(appState.currentAction);
          pushWidget(
            appState.currentAction.widget!,
            appState.currentAction.page!,
          );
          break;
        case PageState.pop:
          pop();
          break;
        case PageState.replace:
          _setPageAction(appState.currentAction);
          replace(appState.currentAction.page!);
          break;
        case PageState.replaceAll:
          _setPageAction(appState.currentAction);
          replaceAll(appState.currentAction.page!);
          break;
      }
    }
    appState.resetCurrentAction();
    return List.of(_pages);
  }

  void addAll(List<PageConfiguration> routes) {
    _pages.clear();
    for (var route in routes) {
      addPage(route);
    }
  }

  @override
  Future<void> setNewRoutePath(PageConfiguration configuration) {
    final shouldAddPage = _pages.isEmpty ||
        (_pages.last.arguments as PageConfiguration).uiPage !=
            configuration.uiPage;
    if (shouldAddPage) {
      _pages.clear();
      addPage(configuration);
    }
    return SynchronousFuture(null);
  }

  void _setPageAction(PageAction action) {
    switch (action.page!.uiPage) {
      case Pages.splashPage:
        splashPageConfig.currentPageAction = action;
        break;
      case Pages.loginPage:
        loginPageConfig.currentPageAction = action;
        break;
      case Pages.dashboardPage:
        dashboardPageConfig.currentPageAction = action;
        break;
      case Pages.branchPage:
        branchPageConfig.currentPageAction = action;
        break;
      case Pages.userPage:
        userPageConfig.currentPageAction = action;
        break;
      case Pages.settingsPage:
        settingsPageConfig.currentPageAction = action;
        break;
      default:
        break;
    }
  }

  void _removePage(MaterialPage page) {
    _pages.remove(page);
  }

  void pop() {
    if (canPop()) {
      final MaterialPage page = _pages.last as MaterialPage;
      _removePage(page);
    }
  }

  bool canPop() {
    final MaterialPage page = _pages.last as MaterialPage;

    return _pages.length > 1;
  }

  bool _onPopPage(Route<dynamic> route, result) {
    final didPop = route.didPop(result);
    if (!didPop) {
      return false;
    }

    if (canPop()) {
      pop();
      return true;
    } else {
      return false;
    }
  }
}
