import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/constants/constants.dart';
import 'package:hnc_admin_dashboard/src/constants/global_functions.dart';
import 'package:hnc_admin_dashboard/src/model/daily_report_model.dart';

class DailyReportCard extends StatelessWidget {
  final DailyReportModel info;
  const DailyReportCard({
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
            info.date,
            red.withOpacity(0.8),
          ),
          amountOutput(
            info.totalSum,
            indigo,
          ),
          amountOutput(
            info.totalSum,
            orange.withOpacity(0.8),
          ),
          amountOutput(
            info.totalSum,
            green.withOpacity(0.8),
          ),
        ],
      ),
    );
  }
}
