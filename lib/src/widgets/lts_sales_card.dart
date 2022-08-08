import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/constants/constants.dart';
import 'package:hnc_admin_dashboard/src/constants/global_functions.dart';
import 'package:hnc_admin_dashboard/src/model/lts_sales_model.dart';

class LtsSalesCard extends StatelessWidget {
  const LtsSalesCard({
    Key? key,
    required this.info,
  }) : super(key: key);
  final LtsSalesModel info;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(appPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textOutput(
            info.branchName,
            purple.withOpacity(0.8),
          ),
          textOutput(
            info.totalSales,
            orange.withOpacity(0.8),
          ),
          textOutput(
            info.netProfit,
            green.withOpacity(0.8),
          ),
        ],
      ),
    );
  }
}
