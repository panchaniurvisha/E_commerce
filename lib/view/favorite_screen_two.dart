import 'package:e_commerce/res/commen/app_favorite_clothes_colum.dart';
import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:e_commerce/res/constant/app_colors.dart';
import 'package:flutter/material.dart';

import '../res/commen/app_button.dart';
import '../res/constant/app_images.dart';

class FavoriteScreenTwo extends StatefulWidget {
  const FavoriteScreenTwo({super.key});

  @override
  State<FavoriteScreenTwo> createState() => _FavoriteScreenTwoState();
}

class _FavoriteScreenTwoState extends State<FavoriteScreenTwo> {
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

  List<Map> data = [
    {
      "image": AppImages.favoriteOne,
      "price": "10\$",
      "clothesName": "Shirt",
      "brandName": "Lime",
      "whichColor": " Blue",
      "whichSize": "L",
    },
    {
      "image": AppImages.favorite2Two,
      "price": "46\$",
      "clothesName": "Longsleeve Violeta",
      "brandName": "Mango",
      "whichColor": " Orange",
      "whichSize": "S",
    },
    {
      "image": AppImages.favorite3Three,
      "price": "39\$",
      "clothesName": "T-Shirt",
      "brandName": "&Berries",
      "whichColor": " Black",
      "whichSize": "S",
    },
    {
      "image": AppImages.favorite3Three,
      "price": "39\$",
      "clothesName": "T-Shirt",
      "brandName": "&Berries",
      "whichColor": " Black",
      "whichSize": "S",
    },
  ];

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
          title: const Text(
            "Favorites",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: AppColors.iconAndTitleColor,
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
                  const Icon(
                    Icons.filter_list_rounded,
                    color: AppColors.iconAndTitleColor,
                    size: 30,
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
                    child: Image.asset(
                      AppImages.viewIcon,
                      height: height(context) / 50,
                    ),
                    onTap: () => Navigator.pop(context),
                  )
                ],
              ),
              GridView.builder(
                padding: EdgeInsets.only(
                    top: height(context) / 40, bottom: height(context) / 40),
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: width(context) / 30,
                    childAspectRatio: 0.535),
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context, index) => AppFavoriteClothesColum(
                    index: index,
                    price: data[index]["price"],
                    chooseSize: data[index]["whichSize"],
                    chooseColor: data[index]["whichColor"],
                    clothesName: data[index]["clothesName"],
                    brandName: data[index]["brandName"],
                    image: data[index]["image"]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
