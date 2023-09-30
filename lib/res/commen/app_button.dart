import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import 'mediaquery/app_mediaquery.dart';

class AppButton extends StatelessWidget {
  final String? text;
  const AppButton({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height(context) / 120)
          .copyWith(right: height(context) / 60),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
        ),
        child: Text(
          text!,
          style: const TextStyle(
            color: AppColors.textFieldFillColor,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
