import 'package:e_commerce/res/commen/app_favorite_clothes_container.dart';
import 'package:e_commerce/res/constant/app_colors.dart';
import 'package:e_commerce/res/constant/app_images.dart';
import 'package:e_commerce/view/favorite_screen_two.dart';
import 'package:flutter/material.dart';

import '../../res/commen/app_button.dart';
import '../../res/commen/mediaquery/app_mediaquery.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  List<Widget> listOfButton(BuildContext context) {
    return [
      const AppButton(
        text: "Summer",
      ),
      const AppButton(
        text: "T-Shirts",
      ),
      const AppButton(
        text: "Shirts",
      ),
    ];
  }

  List<Widget> outlineButtonList(BuildContext context) {
    List<Map> data = [
      {
        "image": AppImages.favoriteOne,
        "brand": "LIME",
        "clothesName": "Shirt",
        "whichColor": " Blue",
        "whichSize": "L",
        "price": "32\$",
      },
      {
        "image": AppImages.favoriteTwo,
        "brand": "Mango",
        "clothesName": "Longsleeve Violeta",
        "whichColor": " Orange",
        "whichSize": "S",
        "price": "46\$",
      },
      {
        "image": AppImages.favoriteThree,
        "brand": "&Berries",
        "clothesName": "T-Shirt",
        "whichColor": " Black",
        "whichSize": "S",
        "price": "39\$",
      },
      {
        "image": AppImages.favoriteThree,
        "brand": "&Berries",
        "clothesName": "T-Shirt",
        "whichColor": " Black",
        "whichSize": "S",
        "price": "39\$",
      },
    ];
    return List.generate(4, (index) {
      return AppFavoriteClothesContainer(
        image: data[index]["image"],
        brandName: data[index]["brand"],
        clothesName: data[index]["clothesName"],
        chooseColor: data[index]["whichColor"],
        chooseSize: data[index]["whichSize"],
        price: data[index]["price"],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(right: width(context) / 20),
            child: InkWell(
              child: const Icon(
                Icons.arrow_back_ios_rounded,
                color: AppColors.iconAndTitleColor,
              ),
              onTap: () => Navigator.pop(context),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(
                right: width(context) / 40,
              ),
              child:
                  const Icon(Icons.search, color: AppColors.iconAndTitleColor),
            ),
          ],
          centerTitle: true),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width(context) / 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Favorites",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 34,
                  color: AppColors.iconAndTitleColor,
                ),
              ),
              SizedBox(
                height: height(context) / 20,
                child: ListView.builder(
                    itemBuilder: (context, index) => Row(
                          children: [...listOfButton(context)],
                        ),
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true),
              ),
              Row(
                children: [
                  const InkWell(
                    child: Icon(
                      Icons.filter_list_rounded,
                      color: AppColors.iconAndTitleColor,
                      size: 30,
                    ),
                  ),
                  const Text(
                    "Filter",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: AppColors.iconAndTitleColor),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.swap_vert_rounded,
                    color: AppColors.iconAndTitleColor,
                    size: 30,
                  ),
                  const Text(
                    "Price: lowest to high",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: AppColors.iconAndTitleColor),
                  ),
                  const Spacer(),
                  InkWell(
                    child: const Icon(
                      Icons.view_module_sharp,
                      color: AppColors.iconAndTitleColor,
                      size: 30,
                    ),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FavoriteScreenTwo()),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height(context) / 40,
              ),
              ...outlineButtonList(context),
            ],
          ),
        ),
      ),
    );
  }
}
