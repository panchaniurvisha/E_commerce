import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class AppOutLineButton extends StatelessWidget {
  final String? text;
  final void Function()? onPressed;

  const AppOutLineButton({super.key, this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width(context) / 3.5,
      child: OutlinedButton(
        onPressed: onPressed ?? () {},
        style: ButtonStyle(
          side: MaterialStateProperty.all(
              const BorderSide(color: AppColors.labelTextColor)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(width(context) / 40),
            ),
          ),
        ),
        child: Text(
          text!,
          style: const TextStyle(
            color: AppColors.iconAndTitleColor,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
