import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class AppListTitle extends StatelessWidget {
  final String? text;
  final String? image;

  const AppListTitle({super.key, this.text, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(context) / 8,
      margin: EdgeInsets.only(top: height(context) / 60),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          width(context) / 30,
        ),
        color: AppColors.textFieldFillColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: width(context) / 20),
            child: Text(
              text!,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: AppColors.iconAndTitleColor),
            ),
          ),
          Image.asset(
            image!,
            height: height(context) / 8,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
