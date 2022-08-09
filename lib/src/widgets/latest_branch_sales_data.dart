import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/constants/constants.dart';
import 'package:hnc_admin_dashboard/src/data/sample_data.dart';
import 'package:hnc_admin_dashboard/src/widgets/heading_container.dart';
import 'package:hnc_admin_dashboard/src/widgets/hnc_row_container.dart';
import 'package:hnc_admin_dashboard/src/widgets/lts_sales_card.dart';

class LatestBranchSalesData extends StatelessWidget {
  const LatestBranchSalesData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.40,
      width: double.infinity,
      padding: const EdgeInsets.all(appPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Today's Report",
            style: TextStyle(
              color: textColor,
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
          const HncRowContainer(
            childrenList: [
              HeadingContainer(
                headingContainerColor: purple,
                title: "Branch's",
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
              itemBuilder: (context, index) => LtsSalesCard(
                info: ltsSalesList[index],
              ),
              itemCount: ltsSalesList.length,
            ),
          )
        ],
      ),
    );
  }
}
