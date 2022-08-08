import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/constants/constants.dart';
import 'package:hnc_admin_dashboard/src/data/sample_data.dart';
import 'package:hnc_admin_dashboard/src/widgets/heading_container.dart';
import 'package:hnc_admin_dashboard/src/widgets/lts_sales_card.dart';

class LatestBranchSalesData extends StatelessWidget {
  const LatestBranchSalesData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
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
            "Today's Sales",
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                HeadingContainer(
                    headingContainerColor: purple, title: "Branch's"),
                HeadingContainer(headingContainerColor: orange, title: "Sales"),
                HeadingContainer(headingContainerColor: green, title: "Profits")
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
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
