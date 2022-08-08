import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/constants/constants.dart';
import 'package:hnc_admin_dashboard/src/constants/responsive.dart';
import 'package:hnc_admin_dashboard/src/providers/controller.dart';
import 'package:hnc_admin_dashboard/src/widgets/dashboard_components.dart';
import 'package:hnc_admin_dashboard/src/widgets/drawer_menu.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      key: Provider.of<Controller>(context, listen: false).scaffoldKey,
      backgroundColor: bgColor.withOpacity(0.5),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                child: DrawerMenu(),
              ),
            const Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(appPadding),
                child: DashBoardComponents(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
