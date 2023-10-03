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
      height: height(context) / 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          width(context) / 30,
        ),
        color: AppColors.textFieldFillColor,
      ),
      child: Row(
        children: [
          Image.asset(
            image!,
            height: height(context) / 8,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.only(left: width(context) / 40),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Mango",
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
                  const Row(
                    children: [
                      Text(
                        "Units: ",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                            color: AppColors.labelTextColor),
                      ),
                      Text(
                        "1",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                            color: AppColors.iconAndTitleColor),
                      ),
                      Spacer(),
                      Text(
                        "51\$",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                            color: AppColors.labelTextColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
