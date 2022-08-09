import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/constants/constants.dart';
import 'package:hnc_admin_dashboard/src/data/sample_data.dart';
import 'package:hnc_admin_dashboard/src/widgets/heading_container.dart';
import 'package:hnc_admin_dashboard/src/widgets/hnc_row_container.dart';
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
      height: MediaQuery.of(context).size.height * 0.40,
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
            "Monthly Report",
            style: TextStyle(
              color: textColor,
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
          const HncRowContainer(
            childrenList: [
              HeadingContainer(
                headingContainerColor: red,
                title: "Month",
              ),
              HeadingContainer(
                headingContainerColor: indigo,
                title: "Sales",
              ),
              HeadingContainer(
                headingContainerColor: orange,
                title: "Expense",
              ),
              HeadingContainer(
                headingContainerColor: green,
                title: "Profit",
              ),
            ],
          ),
          const Divider(
            color: grey,
            thickness: 1,
          ),
          const SizedBox(
            height: appPadding,
          ),
          Expanded(
            child: ListView.separated(
              controller: ScrollController(),
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
