import 'package:e_commerce/res/commen/app_rating_bar.dart';
import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:e_commerce/res/constant/app_colors.dart';
import 'package:flutter/material.dart';

import '../constant/app_images.dart';

class AppFavoriteClothesContainer extends StatelessWidget {
  final void Function()? onTap;
  final String? image;
  final String? clothesName;
  final String? brandName;
  final String? price;
  final String? chooseColor;
  final String? chooseSize;

  const AppFavoriteClothesContainer({
    super.key,
    this.onTap,
    this.image,
    this.clothesName,
    this.brandName,
    this.price,
    this.chooseColor,
    this.chooseSize,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        InkWell(
          splashColor: Colors.transparent,
          onTap: onTap ?? () {},
          child: Container(
            height: height(context) / 8,
            margin: EdgeInsets.only(bottom: height(context) / 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                width(context) / 30,
              ),
              color: AppColors.textFieldFillColor,
            ),
            child: Row(
              children: [
                Image.asset(
                  image!,
                  height: height(context) / 8,
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: EdgeInsets.only(left: width(context) / 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //  mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            brandName!,
                            style: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: AppColors.labelTextColor),
                          ),
                        ],
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
                      Row(
                        children: [
                          Text(
                            price!,
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: AppColors.iconAndTitleColor),
                          ),
                          SizedBox(width: width(context) / 10),
                          const AppRatingBar(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: height(context) / 100,
          right: width(context) / 25,
          child: const Icon(
            Icons.close,
            color: AppColors.labelTextColor,
            size: 20,
          ),
        ),
        Image.asset(AppImages.begButton, height: height(context) / 15)
      ],
    );
  }
}
