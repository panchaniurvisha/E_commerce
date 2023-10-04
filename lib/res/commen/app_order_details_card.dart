import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import 'mediaquery/app_mediaquery.dart';

class AppOrderDetailsCard extends StatelessWidget {
  final String? image;

  const AppOrderDetailsCard({
    super.key,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: height(context) / 60),
      height: height(context) / 8,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          width(context) / 30,
        ),
        color: AppColors.textFieldFillColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            image!,
            height: height(context) / 8,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.only(left: width(context) / 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Pullover",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppColors.iconAndTitleColor),
                ),
                const Text("Mango",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: AppColors.labelTextColor)),
                Row(
                  children: [
                    const Text(
                      "Color: ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: AppColors.labelTextColor),
                    ),
                    const Text(
                      "Gray",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: AppColors.iconAndTitleColor),
                    ),
                    SizedBox(
                      width: width(context) / 40,
                    ),
                    const Text(
                      "Size: ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: AppColors.labelTextColor),
                    ),
                    const Text(
                      "L",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: AppColors.iconAndTitleColor),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Units: ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: AppColors.labelTextColor),
                    ),
                    const Text(
                      "1",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: AppColors.iconAndTitleColor),
                    ),
                    SizedBox(width: width(context) / 2.2),
                    const Text(
                      "51\$",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: AppColors.iconAndTitleColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
