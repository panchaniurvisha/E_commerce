import 'package:e_commerce/res/commen/app_favorite_button.dart';
import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import 'app_rating_bar.dart';

class AppColum extends StatelessWidget {
  final int index;
  final String? image;
  final String? clothesName;
  final String? brandName;
  final String? price;

  const AppColum(
      {super.key,
      this.image,
      this.clothesName,
      this.brandName,
      this.price,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.circular(width(context) / 40),
          child: Image.asset(image!,
              height: height(context) / 4.2, fit: BoxFit.cover),
        ),
        Positioned(
          top: height(context) / 5.5,
          left: width(context) / 2.8,
          child: const AppFavoriteButton(),
        ),
        Positioned(
          top: height(context) / 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppRatingBar(),
              Text(
                brandName!,
                style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: AppColors.labelTextColor),
              ),
              Text(
                clothesName!,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.iconAndTitleColor),
              ),
              Text(
                price!,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: AppColors.iconAndTitleColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
