import 'package:flutter/material.dart';
import 'package:hnc_admin_dashboard/src/constants/constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        helperStyle: TextStyle(
          color: textColor.withOpacity(0.5),
          fontSize: 15,
        ),
        fillColor: secondaryColor,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        prefixIcon: Icon(
          Icons.search,
          color: textColor.withOpacity(0.5),
        ),
      ),
    );
  }
}
