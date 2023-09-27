import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final int? maxLength;
  final Widget? suffixIcon;
  final String? labelText;

  const AppTextField({
    super.key,
    this.controller,
    this.maxLength,
    this.suffixIcon,
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller!,
      maxLines: maxLength ?? 1,
      autofocus: false,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        suffixIcon: suffixIcon ?? const SizedBox(),
        contentPadding: EdgeInsets.symmetric(
            vertical: height(context) / 40, horizontal: width(context) / 30),
        counter: const SizedBox(),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.textFieldFillColor, width: 1),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.iconAndTitleColor, width: 1),
        ),
        fillColor: AppColors.textFieldFillColor,
        filled: true,
        labelText: labelText ?? "",
        labelStyle: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w400,
            color: AppColors.labelTextColor),
      ),
      style: const TextStyle(
          color: AppColors.primarySwitchColor,
          fontSize: 14,
          fontWeight: FontWeight.w500),
    );
  }
}
