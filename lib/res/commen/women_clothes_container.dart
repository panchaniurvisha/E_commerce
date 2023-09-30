import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import 'app_favorite_button.dart';
import 'app_rating_bar.dart';
import 'mediaquery/app_mediaquery.dart';

class WomenClothesContainer extends StatelessWidget {
  final void Function()? onTap;
  final String? image;
  final String? clothesName;
  final String? brandName;
  final String? price;
  const WomenClothesContainer({
    super.key,
    this.onTap,
    this.image,
    this.clothesName,
    this.brandName,
    this.price,
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
            margin: EdgeInsets.only(bottom: height(context) / 25),
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
                      Text(
                        clothesName!,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.iconAndTitleColor),
                      ),
                      Text(
                        brandName!,
                        style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.labelTextColor),
                      ),
                      const AppRatingBar(),
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
            ),
          ),
        ),
        const AppFavoriteButton(),
      ],
    );
  }
}
