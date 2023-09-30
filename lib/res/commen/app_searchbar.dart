import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class AppSearchBar extends StatelessWidget {
  final TextEditingController? controller;
  const AppSearchBar({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height / 40),
      child: TextField(
        autofocus: false,
        style: const TextStyle(
          color: AppColors.iconAndTitleColor,
          fontWeight: FontWeight.w400,
          fontSize: 14,
          fontStyle: FontStyle.normal,
        ),
        cursorColor: AppColors.iconAndTitleColor,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: height / 60),
            prefixIcon:
                const Icon(Icons.search_rounded, color: AppColors.searchColor),
            counter: Container(),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.backGroundColor),
              borderRadius: BorderRadius.all(
                Radius.circular(width / 10),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(
                Radius.circular(width / 10),
              ),
            ),
            hintText: "Search",
            hintStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.labelTextColor),
            filled: true,
            fillColor: AppColors.textFieldFillColor),
      ),
    );
  }
}
