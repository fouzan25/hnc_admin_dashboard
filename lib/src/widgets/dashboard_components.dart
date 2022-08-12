import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/constants/constants.dart';
import 'package:hnc_admin_dashboard/src/constants/responsive.dart';
import 'package:hnc_admin_dashboard/src/router/ui_page.dart';
import 'package:hnc_admin_dashboard/src/widgets/%20custom_app_bar.dart';
import 'package:hnc_admin_dashboard/src/widgets/daily_profit.dart';
import 'package:hnc_admin_dashboard/src/widgets/latest_branch_sales_data.dart';
import 'package:hnc_admin_dashboard/src/widgets/monthly_profit.dart';

class DashBoardComponents extends StatelessWidget {
  const DashBoardComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const CustomAppBar(
            page: Pages.dashboardPage,
          ),
          const SizedBox(
            height: appPadding * 3,
          ),
          const LatestBranchSalesData(),
          const SizedBox(
            height: appPadding * 3,
          ),
          if (!Responsive.isMobile(context))
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MonthlyProfit(
                  width: MediaQuery.of(context).size.width * 0.4,
                ),
                DailyProfit(
                  width: MediaQuery.of(context).size.width * 0.4,
                )
              ],
            ),
          if (Responsive.isMobile(context))
            MonthlyProfit(
              width: MediaQuery.of(context).size.width * 1,
            ),
          if (Responsive.isMobile(context))
            const SizedBox(
              height: appPadding * 3,
            ),
          if (Responsive.isMobile(context))
            DailyProfit(
              width: MediaQuery.of(context).size.width * 1,
            ),
        ],
      ),
    );
  }
}
