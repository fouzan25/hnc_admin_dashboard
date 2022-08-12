import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/router/ui_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String loginKey = 'LoggedIn';

enum PageState {
  none,
  addPage,
  addAll,
  addWidget,
  pop,
  replace,
  replaceAll,
}

class PageAction {
  PageState state;
  PageConfiguration? page;
  List<PageConfiguration>? pages;
  Widget? widget;

  PageAction({
    this.state = PageState.none,
    this.page,
    this.pages,
    this.widget,
  });
}

class AppState extends ChangeNotifier {
  AppState() {
    getLoggedInState();
  }
  bool _loggedIn = false;

  bool get loggedIn => _loggedIn;

  bool _splashFinished = false;

  bool get splashFinished => _splashFinished;

  PageAction _currentAction = PageAction();

  PageAction get currentAction => _currentAction;

  set currentAction(PageAction action) {
    _currentAction = action;
    notifyListeners();
  }

  void resetCurrentAction() {
    _currentAction = PageAction();
  }

  void setSplashFinished() {
    _splashFinished = true;
    if (_loggedIn) {
      _currentAction = PageAction(
        state: PageState.replaceAll,
        page: dashboardPageConfig,
      );
    } else {
      _currentAction = PageAction(
        state: PageState.replaceAll,
        page: loginPageConfig,
      );
    }
    notifyListeners();
  }

  void login() {
    _loggedIn = true;
    saveLoginState(loggedIn);
    _currentAction = PageAction(
      state: PageState.replaceAll,
      page: dashboardPageConfig,
    );
    notifyListeners();
  }

  void logout() {
    _loggedIn = false;
    saveLoginState(loggedIn);
    _currentAction = PageAction(
      state: PageState.replaceAll,
      page: loginPageConfig,
    );
    notifyListeners();
  }

  void saveLoginState(bool loggedIn) async {
    final pref = await SharedPreferences.getInstance();
    pref.setBool(
      loginKey,
      loggedIn,
    );
  }

  void getLoggedInState() async {
    final pref = await SharedPreferences.getInstance();
    _loggedIn = pref.getBool(
          loginKey,
        ) ??
        false;
  }
}
