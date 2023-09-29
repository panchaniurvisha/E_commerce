import 'package:e_commerce/res/commen/app_elevated_button.dart';
import 'package:e_commerce/res/commen/app_favorite_button.dart';
import 'package:flutter/material.dart';

import '../../res/commen/app_rating_bar.dart';
import '../../res/commen/mediaquery/app_mediaquery.dart';
import '../../res/constant/app_colors.dart';
import '../../res/constant/app_images.dart';
import 'home_screen_3.dart';

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
      "discount": "-20%",
      "price": "12\$",
    },
    {
      "image": AppImages.sportsClothes,
      "name": "Sitlly",
      "discount": "-10%",
      "typeDress": "Sport Dress",
      "price": "19\$",
    },
    {
      "image": AppImages.yellowHoodie,
      "name": "yellow dress",
      "discount": "-30%",
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
                                child: const AppFavoriteButton(),
                              ),
                              Positioned(
                                  top: height(context) / 4.8,
                                  child: const AppRatingBar()),
                              Positioned(
                                top: height(context) / 4.2,
                                child: Text(
                                  saleData[index]["name"],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 11,
                                    color: AppColors.labelTextColor,
                                  ),
                                ),
                              ),
                              AppElevatedButton(
                                minimumSize: MaterialStateProperty.all(
                                  Size(
                                    width(context) / 90,
                                    height(context) / 40,
                                  ),
                                ),
                                padding: MaterialStateProperty.all(
                                  EdgeInsets.all(height(context) / 100),
                                ),
                                text: saleData[index]["discount"],
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                              ),
                              Positioned(
                                top: height(context) / 3.9,
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
                                top: height(context) / 3.6,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "New",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 34,
                          color: AppColors.iconAndTitleColor),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreenThree(),
                        ),
                      ),
                      // onTap: () => Navigator.pushNamed(
                      //     context, RoutesName.homeScreenThree),
                      child: const Text(
                        "view all",
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: AppColors.iconAndTitleColor),
                      ),
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
