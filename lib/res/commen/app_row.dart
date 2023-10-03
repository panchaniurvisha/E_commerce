import 'package:e_commerce/res/constant/app_colors.dart';
import 'package:flutter/material.dart';

class AppRow extends StatelessWidget {
  final String? text;
  final String? trailingText;

  const AppRow({super.key, this.text, this.trailingText});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text!,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.labelTextColor,
            )),
        Text(
          textAlign: TextAlign.start,
          trailingText!,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.iconAndTitleColor,
          ),
        ),
      ],
    );
  }
}
