import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/Theme_data/theme.dart';
import 'package:hnc_admin_dashboard/src/providers/controller.dart';
import 'package:hnc_admin_dashboard/src/screens/home.dart';
import 'package:hnc_admin_dashboard/src/screens/login_screen.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Controller(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dashboard',
        theme: AppTheme.themeData,
        home: LoginScreen(),
        routes: {
          LoginScreen.routeName: (ctx) => LoginScreen(),
          Home.routeName: (ctx) => const Home(),
        },
      ),
    );
  }
}
