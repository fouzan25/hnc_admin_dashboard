import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/Theme_data/theme.dart';
import 'package:hnc_admin_dashboard/src/providers/app_state.dart';
import 'package:hnc_admin_dashboard/src/providers/controller.dart';
import 'package:hnc_admin_dashboard/src/router/back_dispatcher.dart';
import 'package:hnc_admin_dashboard/src/router/hnc_parser.dart';
import 'package:hnc_admin_dashboard/src/router/router_delegate.dart';
import 'package:hnc_admin_dashboard/src/router/ui_page.dart';
import 'package:provider/provider.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final appState = AppState();
  late HncRouterDelegate delegate;
  late HncBackButtonDispatcher backButtonDispatcher;
  final parser = HncParser();

  _MyAppState() {
    delegate = HncRouterDelegate(appState);
    delegate.setNewRoutePath(splashPageConfig);
    backButtonDispatcher = HncBackButtonDispatcher(delegate);
  }
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppState>(
          create: (_) => appState,
        ),
        ChangeNotifierProvider<Controller>(
          create: (ctx) => Controller(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Dashboard',
        theme: AppTheme.themeData,
        backButtonDispatcher: backButtonDispatcher,
        routerDelegate: delegate,
        routeInformationParser: parser,
      ),
    );
  }
}
