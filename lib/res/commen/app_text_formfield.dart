import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import 'mediaquery/app_mediaquery.dart';

class AppTextFormField extends StatelessWidget {
  final bool? obscureText;
  final Widget? suffixIcon;
  final String? labelText;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

  const AppTextFormField({
    Key? key,
    this.controller,
    this.labelText,
    this.validator,
    this.obscureText,
    this.suffixIcon,
    this.keyboardType,
    this.textInputAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return TextFormField(
      obscureText: obscureText ?? false,
      controller: controller,
      autofocus: false,
      cursorColor: Colors.black,
      keyboardType: keyboardType,
      textInputAction: textInputAction ?? TextInputAction.next,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: Icon(Icons.clear, color: AppColors.errorColor),
          onPressed: () {
            controller?.clear();
          },
        ),
        fillColor: AppColors.textFieldFillColor,
        filled: true,
        labelText: labelText!,
        contentPadding: EdgeInsets.symmetric(
            vertical: height(context) / 40, horizontal: width / 30),
        counter: const SizedBox(),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.textFieldFillColor),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.iconAndTitleColor),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.errorColor),
        ),
        labelStyle: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w400,
            color: AppColors.labelTextColor),
      ),
      style: const TextStyle(
          color: AppColors.primarySwitchColor,
          fontSize: 14,
          fontWeight: FontWeight.w500),
      validator: validator,
    );
  }
}
