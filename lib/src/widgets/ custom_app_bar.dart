import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/constants/constants.dart';
import 'package:hnc_admin_dashboard/src/constants/responsive.dart';
import 'package:hnc_admin_dashboard/src/providers/controller.dart';
import 'package:hnc_admin_dashboard/src/widgets/profile_info.dart';
import 'package:hnc_admin_dashboard/src/widgets/search_field.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            onPressed: () =>
                Provider.of<Controller>(context, listen: false).controlMenu(),
            icon: Icon(
              Icons.menu,
              color: textColor.withOpacity(0.5),
            ),
          ),
        const Expanded(
          child: SearchField(),
        ),
        const ProfileInfo(),
      ],
    );
  }
}
