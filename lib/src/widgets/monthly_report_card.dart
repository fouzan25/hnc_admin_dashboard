import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/constants/constants.dart';
import 'package:hnc_admin_dashboard/src/constants/global_functions.dart';
import 'package:hnc_admin_dashboard/src/model/monthly_report_model.dart';
import 'package:hnc_admin_dashboard/src/widgets/hnc_row_container.dart';

class MonthlyReportCard extends StatelessWidget {
  final MonthlyReportModel info;
  const MonthlyReportCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HncRowContainer(
        crossAxisValue: CrossAxisAlignment.center,
        childrenList: [
          textOutput(
            info.month,
            red,
          ),
          amountOutput(
            info.sumOfTotalSalesInMonth,
            indigo,
          ),
          amountOutput(
            info.sumOfTotalExpenseInMonth,
            orange,
          ),
          amountOutput(
            info.sumOfTotalProfitInMonth,
            green,
          ),
        ]);
  }
}
