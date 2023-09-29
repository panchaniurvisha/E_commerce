import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import 'mediaquery/app_mediaquery.dart';

class AppFavoriteButton extends StatelessWidget {
  const AppFavoriteButton({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(context) / 10,
      decoration: BoxDecoration(
        color: AppColors.textFieldFillColor,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: AppColors.backGroundColor.withOpacity(0.5), // Shadow color
            spreadRadius: 5, // Spread radius of the shadow
            blurRadius: 7, // Blur radius of the shadow
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(height(context) / 70),
        child: const Icon(Icons.favorite_border_rounded,
            color: AppColors.labelTextColor, size: 18),
      ),
    );
  }
}
