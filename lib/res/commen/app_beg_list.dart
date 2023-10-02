import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import 'mediaquery/app_mediaquery.dart';

class AppBegList extends StatelessWidget {
  final String? image;
  final String? color;
  final String? size;
  final String? price;
  final String? clothesName;

  const AppBegList(
      {super.key,
      this.image,
      this.clothesName,
      this.color,
      this.size,
      this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(context) / 8,
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
            padding: EdgeInsets.only(left: width(context) / 40),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Text(
                        clothesName!,
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: AppColors.iconAndTitleColor),
                      ),
                      const Icon(Icons.more_vert_rounded,
                          size: 18, color: AppColors.labelTextColor)
                    ],
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
                        color!,
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
                        size!,
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                            color: AppColors.iconAndTitleColor),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: AppColors.shadowColorButton,
                                  offset: Offset(0, 4),
                                  blurRadius: 12,
                                  spreadRadius: 0)
                            ],
                            shape: BoxShape.circle,
                            color: AppColors.textFieldFillColor),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.add,
                              size: 20, color: AppColors.labelTextColor),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: AppColors.shadowColorButton,
                                  offset: Offset(0, 4),
                                  blurRadius: 12,
                                  spreadRadius: 0)
                            ],
                            shape: BoxShape.circle,
                            color: AppColors.textFieldFillColor),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.remove,
                              size: 20, color: AppColors.labelTextColor),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          price!,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: AppColors.iconAndTitleColor),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
