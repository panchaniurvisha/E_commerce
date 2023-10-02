import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class AppOutlineButtonWithSuffixIcon extends StatelessWidget {
  final String? text;
  final void Function()? onPressed;
  final void Function()? onTap;
  final IconData? icon;
  final Color? borderColor;
  const AppOutlineButtonWithSuffixIcon({
    super.key,
    this.text,
    this.icon,
    this.onPressed,
    this.borderColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: borderColor ?? AppColors.labelTextColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(width(context) / 40),
        ),
      ),
      onPressed: onPressed ?? () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text!,
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: AppColors.iconAndTitleColor),
          ),
          SizedBox(
            width: width(context) / 8,
          ),
          InkWell(
            onTap: onTap ?? () {},
            child: Icon(
              icon!,
              color: AppColors.labelTextColor,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
