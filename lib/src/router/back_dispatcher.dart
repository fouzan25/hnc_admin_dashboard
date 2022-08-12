import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/providers/app_state.dart';
import 'router_delegate.dart';

class HncBackButtonDispatcher extends RootBackButtonDispatcher {
  final HncRouterDelegate _routerDelegate;
  final AppState appState = AppState();
  HncBackButtonDispatcher(this._routerDelegate) : super();

  @override
  Future<bool> didPopRoute() {
    return _routerDelegate.popRoute();
  }
}
