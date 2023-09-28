import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:e_commerce/res/constant/app_colors.dart';
import 'package:flutter/material.dart';

class AppCategoryText extends StatelessWidget {
  final String? text;
  final void Function()? onTap;
  const AppCategoryText({super.key, this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      InkWell(
        onTap: onTap ?? () {},
        child: Padding(
          padding: EdgeInsets.only(left: width(context) / 40),
          child: Text(
            text!,
            style: const TextStyle(
              height: 3.5,
              color: AppColors.iconAndTitleColor,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
        ),
      ),
      const Divider(
        color: AppColors.labelTextColor,
      )
    ]);
  }
}
