import 'package:e_commerce/res/commen/app_elevated_button.dart';
import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:e_commerce/res/constant/app_images.dart';
import 'package:e_commerce/view/home/home_screen_2.dart';
import 'package:flutter/material.dart';

import '../../res/constant/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> data = [
    AppImages.homeImage1,
    AppImages.homeImage2,
    AppImages.homeImage3
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.asset(
                AppImages.homeBackground,
              ),
              Positioned(
                bottom: height(context) / 10,
                left: width(context) / 40,
                child: const Text(
                  "Fashion\nsale",
                  style: TextStyle(
                      color: AppColors.iconAndTitleColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 48),
                ),
              ),
              Positioned(
                bottom: height(context) / 30,
                left: width(context) / 40,
                child: AppElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreenTwo(),
                    ),
                  ),
                  //Navigator.pushNamed(context, RoutesName.homeScreenTwo),
                  text: "Check",
                  minimumSize: MaterialStateProperty.all(
                      Size(width(context) / 2.2, height(context) / 20)),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width(context) / 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
