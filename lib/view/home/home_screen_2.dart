import 'package:flutter/material.dart';

import '../../res/commen/mediaquery/app_mediaquery.dart';
import '../../res/constant/app_colors.dart';
import '../../res/constant/app_images.dart';

class HomeScreenTwo extends StatefulWidget {
  const HomeScreenTwo({super.key});

  @override
  State<HomeScreenTwo> createState() => _HomeScreenTwoState();
}

class _HomeScreenTwoState extends State<HomeScreenTwo> {
  List<String> data = [
    AppImages.homeImage1,
    AppImages.homeImage2,
    AppImages.homeImage3
  ];
  List<Map> saleData = [
    {
      "image": AppImages.homeImage3,
      "name": "Dorothy Perkins",
      "typeDress": "Evening Dress",
      "price": "12\$",
    },
    {
      "image": AppImages.sportsClothes,
      "name": "Sitlly",
      "typeDress": "Sport Dress",
      "price": "19\$",
    },
    {
      "image": AppImages.yellowHoodie,
      "name": "yellow dress",
      "typeDress": "fashion Dress",
      "price": "10\$",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.asset(AppImages.streetClothes),
              Positioned(
                bottom: height(context) / 60,
                left: width(context) / 40,
                child: const Text(
                  "Street clothes",
                  style: TextStyle(
                      color: AppColors.iconAndTitleColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 34),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width(context) / 40,
                vertical: height(context) / 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sale",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 34,
                          color: AppColors.iconAndTitleColor),
                    ),
                    Text(
                      "view all",
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: AppColors.iconAndTitleColor),
                    )
                  ],
                ),
                const Text(
                  "Super summer sale",
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: AppColors.iconAndTitleColor),
                ),
                SizedBox(
                  height: height(context) / 3.2,
                  child: ListView.separated(
                      itemBuilder: (context, index) => Stack(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.circular(width(context) / 40),
                                clipBehavior: Clip.antiAlias,
                                child: Image.asset(
                                  saleData[index]["image"],
                                  height: height(context) / 5,
                                ),
                              ),
                              Positioned(
                                left: width(context) / 4,
                                top: height(context) / 7,
                                child: Container(
                                  height: height(context) / 10,
                                  decoration: const BoxDecoration(
                                      color: AppColors.textFieldFillColor,
                                      // AppColors.textFieldFillColor,
                                      shape: BoxShape.circle),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.all(height(context) / 100),
                                    child: const Icon(
                                        Icons.favorite_border_rounded,
                                        color: AppColors.labelTextColor),
                                  ),
                                ),
                              ),
                              // const AppRatingBar(),
                              Positioned(
                                top: height(context) / 4.8,
                                child: Text(
                                  saleData[index]["name"],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11,
                                    color: AppColors.labelTextColor,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: height(context) / 4.4,
                                child: Text(
                                  saleData[index]["typeDress"],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: AppColors.iconAndTitleColor,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: height(context) / 4,
                                child: Text(
                                  saleData[index]["price"],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: AppColors.priceColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                      separatorBuilder: (context, index) => SizedBox(
                            width: width(context) / 20,
                          ),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: saleData.length),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "New",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 34,
                          color: AppColors.iconAndTitleColor),
                    ),
                    Text(
                      "view all",
                      style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: AppColors.iconAndTitleColor),
                    )
                  ],
                ),
                const Text(
                  "You’ve never seen it before!",
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: AppColors.iconAndTitleColor),
                ),
                SizedBox(
                  height: height(context) / 5,
                  child: ListView.separated(
                    itemBuilder: (context, index) => Stack(
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.circular(width(context) / 40),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            data[index],
                          ),
                        ),
                        Positioned(
                          left: width(context) / 50,
                          top: height(context) / 80,
                          child: Image.asset(
                            AppImages.newLabelButton,
                            height: height(context) / 40,
                          ),
                        )
                      ],
                    ),
                    separatorBuilder: (context, index) => SizedBox(
                      width: width(context) / 20,
                    ),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: data.length,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
