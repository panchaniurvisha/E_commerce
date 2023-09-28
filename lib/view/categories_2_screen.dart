import 'package:e_commerce/res/commen/app_category_text.dart';
import 'package:e_commerce/res/commen/app_elevated_button.dart';
import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:e_commerce/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

import '../res/constant/app_colors.dart';

class CategoriesTwoScreen extends StatefulWidget {
  const CategoriesTwoScreen({super.key});

  @override
  State<CategoriesTwoScreen> createState() => _CategoriesTwoScreenState();
}

class _CategoriesTwoScreenState extends State<CategoriesTwoScreen> {
  bool isButtonPressed = false;
  void toggleTextVisibility() {
    setState(() {
      isButtonPressed = !isButtonPressed;
    });
  }

  List<Widget> listText(BuildContext context) {
    return [
      AppCategoryText(
          text: "Tops",
          onTap: () =>
              Navigator.pushNamed(context, RoutesName.catalogOneScreen)),
      const AppCategoryText(text: "Shirts & Blouses"),
      const AppCategoryText(text: "Cardigans & Sweaters"),
      const AppCategoryText(text: "Knitwear"),
      const AppCategoryText(text: "Blazers"),
      const AppCategoryText(text: "Outerwear"),
      const AppCategoryText(text: "Pants"),
      const AppCategoryText(text: "Jeans"),
      const AppCategoryText(text: "Shorts"),
      const AppCategoryText(text: "Skirts"),
      const AppCategoryText(text: "Dresses"),
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
          title: const Text(
            "Categories",
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: AppColors.iconAndTitleColor),
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
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width(context) / 40),
            child: AppElevatedButton(
              text: "VIEW ALL ITEMS",
              onPressed: () {
                toggleTextVisibility();
              },
            ),
          ),
          Visibility(
            visible: isButtonPressed,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: height(context) / 30,
                  horizontal: width(context) / 40),
              child: const Text(
                "Choose category",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.labelTextColor),
              ),
            ),
          ),
          Visibility(
            visible: isButtonPressed,
            child: Column(
              children: [...listText(context)],
            ),
          ),
        ],
      ),
    );
  }
}
