import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/constants/constants.dart';
import 'package:hnc_admin_dashboard/src/data/sample_data.dart';
import 'package:hnc_admin_dashboard/src/widgets/heading_container.dart';
import 'package:hnc_admin_dashboard/src/widgets/monthly_report_card.dart';

class MonthlyProfit extends StatelessWidget {
  final double width;
  const MonthlyProfit({
    Key? key,
    this.width = 700,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: width,
      padding: const EdgeInsets.all(appPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Monthly Profit",
            style: TextStyle(
              color: textColor,
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(appPadding),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HeadingContainer(
                  headingContainerColor: red.withOpacity(0.5),
                  title: "Month",
                ),
                HeadingContainer(
                  headingContainerColor: grey.withOpacity(0.5),
                  title: "Profit",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: appPadding,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: ((context, _) => const Divider(
                    color: grey,
                    thickness: 1,
                  )),
              itemBuilder: (context, index) => MonthlyReportCard(
                info: monthlyReport[index],
              ),
              itemCount: monthlyReport.length,
            ),
          )
        ],
      ),
    );
  }
}
