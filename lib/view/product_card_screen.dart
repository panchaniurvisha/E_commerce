import 'package:e_commerce/res/commen/app_elevated_button.dart';
import 'package:e_commerce/res/commen/app_favorite_button.dart';
import 'package:e_commerce/res/commen/app_outlinebutton_with_suffixicon.dart';
import 'package:e_commerce/res/commen/app_rating_bar.dart';
import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:flutter/material.dart';

import '../res/constant/app_colors.dart';
import '../res/constant/app_images.dart';

class ProductCardScreen extends StatefulWidget {
  const ProductCardScreen({super.key});

  @override
  State<ProductCardScreen> createState() => _ProductCardScreenState();
}

class _ProductCardScreenState extends State<ProductCardScreen> {
  List<String> image = [AppImages.shortDress1, AppImages.shortDress2];
  List<Map> saleData = [
    {
      "image": AppImages.homeImage3,
      "name": "Dorothy Perkins",
      "typeDress": "Evening Dress",
      "discount": "-20%",
      "price": "12\$",
    },
    {
      "image": AppImages.homeImage2,
      "name": "Mango Boy",
      "discount": "",
      "typeDress": "T-Shirt Sailing",
      "price": "10\$",
    },
    {
      "image": AppImages.homeImage2,
      "name": "yellow dress",
      "discount": "",
      "typeDress": "fashion Dress",
      "price": "10\$",
    }
  ];
  List<bool> isPressed = List.generate(2, (index) => false);

  List<Widget> outLineButtonList(BuildContext context) {
    List<String> data = ["Size", "Black"];
    return List.generate(
      2,
      (index) {
        return AppOutlineButtonWithSuffixIcon(
          text: data[index],
          icon: Icons.keyboard_arrow_down_rounded,
          borderColor: isPressed[index]
              ? AppColors.errorColor
              : AppColors.labelTextColor,
          onPressed: () {
            setState(
              () {
                isPressed[index] = !isPressed[index];
                for (int i = 0; i < isPressed.length; i++) {
                  if (i != index) {
                    isPressed[i] = false;
                  }
                }
                debugPrint("isPressed=$isPressed");
              },
            );
          },
        );
      },
    );
  }

  List<Widget> rowList(BuildContext context, String text) {
    return [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width(context) / 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: AppColors.iconAndTitleColor),
            ),
            const Icon(Icons.navigate_next, color: AppColors.iconAndTitleColor)
          ],
        ),
      )
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
            "Short dress",
            style: TextStyle(
              fontSize: 18,
              color: AppColors.iconAndTitleColor,
              fontWeight: FontWeight.w400,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(
                right: width(context) / 40,
              ),
              child:
                  const Icon(Icons.share, color: AppColors.iconAndTitleColor),
            ),
          ],
          centerTitle: true),
      body: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: height(context) / 3,
            child: ListView.builder(
              itemCount: image.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Image.asset(
                image[index],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width(context) / 40),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...outLineButtonList(context),
                const AppFavoriteButton()
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width(context) / 40),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "H&M",
                  style: TextStyle(
                      color: AppColors.iconAndTitleColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "\$19.99",
                  style: TextStyle(
                      color: AppColors.iconAndTitleColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width(context) / 40),
            child: const Text(
              "Short black dress",
              style: TextStyle(
                  color: AppColors.labelTextColor,
                  fontSize: 11,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: width(context) / 40, bottom: height(context) / 40),
            child: const AppRatingBar(),
          ),
          Padding(
            padding: EdgeInsets.only(left: width(context) / 40),
            child: const Text(
              "Short dress in soft cotton jersey with decorative buttons down the front and a wide, frill-trimmed square neckline with concealed elastication. Elasticated seam under the bust and short puff sleeves with a small frill trim.",
              style: TextStyle(
                fontSize: 14,
                color: AppColors.primarySwitchColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width(context) / 40,
                vertical: height(context) / 40),
            child: AppElevatedButton(
              text: "ADD TO CART",
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(width(context) / 10),
                ),
              ),
            ),
          ),
          const Divider(color: AppColors.labelTextColor),
          ...rowList(context, "Item details"),
          const Divider(color: AppColors.labelTextColor),
          ...rowList(context, "Shipping info"),
          const Divider(color: AppColors.labelTextColor),
          ...rowList(context, "Support"),
          const Divider(color: AppColors.labelTextColor),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width(context) / 40,
                vertical: height(context) / 60),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "You can also like this",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: AppColors.iconAndTitleColor),
                ),
                Text(
                  "12 items",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      color: AppColors.labelTextColor),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height(context) / 3.2,
            child: ListView.separated(
                padding: EdgeInsets.only(left: width(context) / 40),
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
                        index == 0
                            ? AppElevatedButton(
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
                              )
                            : Positioned(
                                left: width(context) / 50,
                                top: height(context) / 80,
                                child: Image.asset(
                                  AppImages.newLabelButton,
                                  height: height(context) / 40,
                                ),
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
        ],
      ),
    );
  }
}
