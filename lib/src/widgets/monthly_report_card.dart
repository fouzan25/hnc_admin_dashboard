import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/constants/constants.dart';
import 'package:hnc_admin_dashboard/src/constants/global_functions.dart';
import 'package:hnc_admin_dashboard/src/model/monthly_report_model.dart';

class MonthlyReportCard extends StatelessWidget {
  final MonthlyReportModel info;
  const MonthlyReportCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(appPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textOutput(
            info.month,
            red.withOpacity(0.8),
          ),
          textOutput(
            info.sumOfTotalInMonth,
            grey.withOpacity(0.8),
          ),
        ],
      ),
    );
  }
}
