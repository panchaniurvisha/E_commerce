import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:e_commerce/res/constant/app_colors.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  final void Function()? onPressed;
  final String? text;
  final MaterialStateProperty<Size?>? minimumSize;
  const AppElevatedButton(
      {super.key, this.onPressed, this.text, this.minimumSize});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed ?? () {},
      style: ButtonStyle(
        // shape: shape ??
        //     MaterialStateProperty.all(
        //       RoundedRectangleBorder(
        //         borderRadius: BorderRadius.circular(width(context) / 2),
        //       ),
        //     ),
        backgroundColor:
            MaterialStateProperty.all(AppColors.elevatedButtonColor),
        minimumSize: minimumSize ??
            MaterialStateProperty.all(
              Size(width(context) / 1, height(context) / 16),
            ),
      ),
      child: Text(
        text!,
        style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.primarySwitchColor),
      ),
    );
  }
}
