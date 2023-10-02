import 'package:e_commerce/res/commen/app_button.dart';
import 'package:e_commerce/res/commen/women_clothes_container.dart';
import 'package:e_commerce/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

import '../res/commen/mediaquery/app_mediaquery.dart';
import '../res/constant/app_colors.dart';
import '../res/constant/app_images.dart';
import 'catalog_2_screen.dart';

class CatalogOneScreen extends StatefulWidget {
  const CatalogOneScreen({super.key});

  @override
  State<CatalogOneScreen> createState() => _CatalogOneScreenState();
}

class _CatalogOneScreenState extends State<CatalogOneScreen> {
  List<Widget> listOfButton(BuildContext context) {
    return [
      const AppButton(text: "T-shirts"),
      const AppButton(text: "Crop tops"),
      const AppButton(text: "Sleeveless"),
      const AppButton(text: "Blouses"),
      const AppButton(text: "T-shirts"),
    ];
  }

  List<Widget> listOfWomenClothes(BuildContext context) {
    return [
      WomenClothesContainer(
        onTap: () {
          Navigator.of(
            context,
            rootNavigator: true,
          ).pushNamed(RoutesName.productCardScreen);
        },
        image: AppImages.pullover,
        brandName: "Mango",
        clothesName: "Pullover",
        price: "51\$",
      ),
      WomenClothesContainer(
        onTap: () {
          Navigator.of(
            context,
            rootNavigator: true,
          ).pushNamed(RoutesName.productCardScreen);
        },
        image: AppImages.blouse,
        brandName: "Dorothy Perkins",
        clothesName: "Blouse",
        price: "34\$",
      ),
      WomenClothesContainer(
        onTap: () {
          Navigator.of(
            context,
            rootNavigator: true,
          ).pushNamed(RoutesName.productCardScreen);
        },
        image: AppImages.tShirt,
        brandName: "LOST Ink",
        clothesName: "T-shirt",
        price: "34\$",
      ),
      WomenClothesContainer(
        onTap: () {
          Navigator.of(
            context,
            rootNavigator: true,
          ).pushNamed(RoutesName.productCardScreen);
        },
        image: AppImages.shirt,
        brandName: "Topshop",
        clothesName: "Shirt",
        price: "51\$",
      ),
    ];
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
                "Women’s tops",
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
                  InkWell(
                    child: const Icon(
                      Icons.filter_list_rounded,
                      color: AppColors.iconAndTitleColor,
                      size: 30,
                    ),
                    onTap: () => Navigator.of(context, rootNavigator: true)
                        .pushNamed(RoutesName.filterScreen),
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
                              builder: (context) => const CatalogTwoScreen()))),
                ],
              ),
              SizedBox(
                height: height(context) / 40,
              ),
              ...listOfWomenClothes(context)
            ],
          ),
        ),
      ),
    );
  }
}
