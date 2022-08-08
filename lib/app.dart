import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/providers/controller.dart';
import 'package:hnc_admin_dashboard/src/screens/home.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => Controller(),
          ),
        ],
        child: const Home(),
      ),
    );
  }
}
