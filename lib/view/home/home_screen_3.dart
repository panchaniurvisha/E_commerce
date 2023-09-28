import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:flutter/material.dart';

import '../../res/constant/app_colors.dart';
import '../../res/constant/app_images.dart';

class HomeScreenThree extends StatefulWidget {
  const HomeScreenThree({super.key});

  @override
  State<HomeScreenThree> createState() => _HomeScreenThreeState();
}

class _HomeScreenThreeState extends State<HomeScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(alignment: Alignment.bottomRight, children: [
            Image.asset(AppImages.newCollection),
            Positioned(
              right: width(context) / 30,
              child: Text(
                "New collection",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 34,
                    color: AppColors.iconAndTitleColor),
              ),
            )
          ]),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: height(context) / 20,
                      ).copyWith(left: width(context) / 50),
                      child: const Text(
                        "Summer\nsale",
                        style: TextStyle(
                            height: 1,
                            fontSize: 34,
                            fontWeight: FontWeight.w700,
                            color: AppColors.elevatedButtonColor),
                      ),
                    ),
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(AppImages.blackClothes,
                            height: height(context) / 3.8,
                            fit: BoxFit.fitHeight),
                        Positioned(
                          bottom: height(context) / 50,
                          left: width(context) / 50,
                          child: const Text(
                            "Black",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 34,
                                color: AppColors.iconAndTitleColor),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(AppImages.mensHats,
                        height: height(context) / 2.2, fit: BoxFit.fitHeight),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
