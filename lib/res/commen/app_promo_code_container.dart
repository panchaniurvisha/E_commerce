import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class AppPromoCodeContainer extends StatelessWidget {
  final void Function()? onTap;
  const AppPromoCodeContainer({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          margin: EdgeInsets.only(right: width(context) / 40),
          width: width(context),
          decoration: BoxDecoration(
            color: AppColors.textFieldFillColor,
            borderRadius: BorderRadius.circular(width(context) / 30),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: height(context) / 60)
                .copyWith(left: width(context) / 10),
            child: const Text(
              "Enter your promo code",
              style: TextStyle(
                  color: AppColors.labelTextColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
          ),
        ),
        InkWell(
          child: Container(
            decoration: const BoxDecoration(
                color: AppColors.labelTextColor, shape: BoxShape.circle),
            child: Padding(
              padding: EdgeInsets.all(height(context) / 70),
              child: const Icon(Icons.arrow_forward_sharp,
                  color: AppColors.backGroundColor),
            ),
          ),
          onTap: onTap ?? () {},
        )
      ],
    );
  }
}
