import 'package:hnc_admin_dashboard/src/model/daily_report_model.dart';
import 'package:hnc_admin_dashboard/src/model/lts_sales_model.dart';
import 'package:hnc_admin_dashboard/src/model/monthly_report_model.dart';

List<LtsSalesModel> ltsSalesList = [
  LtsSalesModel(
    branchName: "branch1",
    totalSales: " 1,43,900.00",
    netProfit: " 57,000.00",
  ),
  LtsSalesModel(
    branchName: "branch2",
    totalSales: " 2,43,900.00",
    netProfit: " 67,000.00",
  ),
  LtsSalesModel(
    branchName: "branch3",
    totalSales: " 1,46,900.00",
    netProfit: " 78,000.00",
  ),
  LtsSalesModel(
    branchName: "branch4",
    totalSales: " 3,46,900.00",
    netProfit: " 79,000.00",
  ),
  LtsSalesModel(
    branchName: "branch5",
    totalSales: " 2,16,900.00",
    netProfit: " 80,000.00",
  ),
];

List<DailyReportModel> dailyReport = [
  DailyReportModel(date: "01-08-2022", totalSum: "1,12,000.00"),
  DailyReportModel(date: "02-08-2022", totalSum: "1,12,000.00"),
  DailyReportModel(date: "03-08-2022", totalSum: "1,12,000.00"),
  DailyReportModel(date: "04-08-2022", totalSum: "1,12,000.00"),
  DailyReportModel(date: "05-08-2022", totalSum: "1,12,000.00"),
  DailyReportModel(date: "06-08-2022", totalSum: "1,12,000.00"),
  DailyReportModel(date: "07-08-2022", totalSum: "1,12,000.00"),
  DailyReportModel(date: "08-08-2022", totalSum: "1,12,000.00"),
  DailyReportModel(date: "09-08-2022", totalSum: "1,12,000.00"),
  DailyReportModel(date: "10-08-2022", totalSum: "1,12,000.00"),
  DailyReportModel(date: "11-08-2022", totalSum: "1,12,000.00"),
];

List<MonthlyReportModel> monthlyReport = [
  MonthlyReportModel(month: "JAN", sumOfTotalInMonth: "12,000000.00"),
  MonthlyReportModel(month: "FEB", sumOfTotalInMonth: "1,30,000,00.00"),
  MonthlyReportModel(month: "MAR", sumOfTotalInMonth: "1,34,000,000.00"),
  MonthlyReportModel(month: "APR", sumOfTotalInMonth: "12,000000.00"),
  MonthlyReportModel(month: "MAY", sumOfTotalInMonth: "14,000000.00"),
  MonthlyReportModel(month: "JUN", sumOfTotalInMonth: "17,000000.00"),
  MonthlyReportModel(month: "JUL", sumOfTotalInMonth: "19,000000.00"),
  MonthlyReportModel(month: "AUG", sumOfTotalInMonth: "13,000000.00"),
  MonthlyReportModel(month: "SEP", sumOfTotalInMonth: "11,000000.00"),
  MonthlyReportModel(month: "OCT", sumOfTotalInMonth: "16,000000.00"),
  MonthlyReportModel(month: "NOV", sumOfTotalInMonth: "2,10,000,00.00"),
  MonthlyReportModel(month: "DEC", sumOfTotalInMonth: "15,000000.00"),
];
