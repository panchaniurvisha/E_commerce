import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../constant/app_images.dart';
import 'app_rating_bar.dart';

class AppFavoriteClothesColum extends StatelessWidget {
  final int index;
  final String? image;
  final String? clothesName;
  final String? brandName;
  final String? price;
  final String? chooseColor;
  final String? chooseSize;

  const AppFavoriteClothesColum(
      {super.key,
      this.image,
      this.clothesName,
      this.brandName,
      this.price,
      required this.index,
      this.chooseColor,
      this.chooseSize});

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
              Row(
                children: [
                  const Text(
                    "Color: ",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: AppColors.labelTextColor),
                  ),
                  Text(
                    chooseColor!,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: AppColors.iconAndTitleColor),
                  ),
                  SizedBox(
                    width: width(context) / 40,
                  ),
                  const Text(
                    "Size: ",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: AppColors.labelTextColor),
                  ),
                  Text(
                    chooseSize!,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: AppColors.iconAndTitleColor),
                  ),
                ],
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
        Positioned(
            top: height(context) / 4.9,
            left: width(context) / 3.1,
            child:
                Image.asset(AppImages.begButton, height: height(context) / 15)),
      ],
    );
  }
}
