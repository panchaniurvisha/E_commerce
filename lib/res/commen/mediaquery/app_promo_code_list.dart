import 'package:e_commerce/res/commen/app_elevated_button.dart';
import 'package:flutter/material.dart';

import '../../constant/app_colors.dart';
import 'app_mediaquery.dart';

class AppPromoCodeList extends StatelessWidget {
  final String? title;
  final String? percentage;
  final String? subTitle;
  final String? trailing;

  const AppPromoCodeList(
      {super.key, this.title, this.subTitle, this.trailing, this.percentage});

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
          Container(
            width: width(context) / 4,
            decoration: BoxDecoration(
              color: AppColors.priceColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  width(context) / 30,
                ),
                bottomLeft: Radius.circular(width(context) / 30),
              ),
            ),
            child: Center(
              child: Text(
                percentage!,
                style: const TextStyle(
                    color: AppColors.iconAndTitleColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 32),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: height(context) / 30,
                horizontal: width(context) / 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.iconAndTitleColor),
                ),
                Text(
                  subTitle!,
                  style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: AppColors.iconAndTitleColor),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: height(context) / 50,
                horizontal: width(context) / 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  trailing!,
                  style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: AppColors.labelTextColor),
                ),
                AppElevatedButton(
                  text: "Apply",
                  padding: MaterialStateProperty.all(
                    EdgeInsets.all(height(context) / 100),
                  ),
                  minimumSize: MaterialStateProperty.all(
                      Size(width(context) / 3.5, height(context) / 50)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(width(context) / 10),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
