import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:e_commerce/res/constant/app_colors.dart';
import 'package:flutter/material.dart';

import '../res/commen/app_button.dart';
import '../res/commen/app_colum.dart';
import '../res/constant/app_images.dart';
import '../utils/routes/routes_name.dart';

class CatalogTwoScreen extends StatefulWidget {
  const CatalogTwoScreen({super.key});

  @override
  State<CatalogTwoScreen> createState() => _CatalogTwoScreenState();
}

class _CatalogTwoScreenState extends State<CatalogTwoScreen> {
  List<Widget> listOfButton(BuildContext context) {
    return [
      const AppButton(text: "T-shirts"),
      const AppButton(text: "Crop tops"),
      const AppButton(text: "Sleeveless"),
      const AppButton(text: "Blouses"),
      const AppButton(text: "T-shirts"),
    ];
  }

  List<Map> data = [
    {
      "image": AppImages.tShirtSpanish,
      "price": "9\$",
      "clothesName": "T-Shirt SPANISH",
      "brandName": "Mango"
    },
    {
      "image": AppImages.blouseTwo,
      "price": "14\$",
      "clothesName": "Blouse",
      "brandName": "Dorothy Perkins"
    },
    {
      "image": AppImages.tShirtSpanish,
      "price": "17\$",
      "clothesName": "Shirt",
      "brandName": "Mango"
    },
    {
      "image": AppImages.blouseTwo,
      "price": "14\$",
      "clothesName": "Light blouse ",
      "brandName": "Dorothy Perkins"
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
            "Women’s tops",
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
                  InkWell(
                    child: const Icon(
                      Icons.swap_vert_rounded,
                      color: AppColors.iconAndTitleColor,
                      size: 30,
                    ),
                    onTap: () {
                      showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                        isDismissible: true,
                        context: context,
                        builder: (context) => Container(
                          height: height(context) / 2.5,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(width(context) / 12),
                              topLeft: Radius.circular(width(context) / 12),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: height(context) / 30,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Center(
                                  child: Text(
                                    "Sort by",
                                    style: TextStyle(
                                      color: AppColors.iconAndTitleColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: width(context) / 20),
                                  child: const Text(
                                    "Popular",
                                    style: TextStyle(
                                      color: AppColors.iconAndTitleColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: width(context) / 20),
                                  child: const Text(
                                    "Newest",
                                    style: TextStyle(
                                      color: AppColors.iconAndTitleColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: width(context) / 20),
                                  child: const Text(
                                    "Customer review",
                                    style: TextStyle(
                                      color: AppColors.iconAndTitleColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  color: AppColors.elevatedButtonColor,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: height(context) / 70,
                                        horizontal: width(context) / 20),
                                    child: const Text(
                                      "Price: lowest to high",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color: AppColors.textFieldFillColor),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: width(context) / 20),
                                  child: const Text(
                                    "Price: highest to low",
                                    style: TextStyle(
                                      color: AppColors.iconAndTitleColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const Text(
                    "Price: lowest to high",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: AppColors.iconAndTitleColor),
                  ),
                  const Spacer(),
                  Image.asset(
                    AppImages.viewIcon,
                    height: height(context) / 50,
                  )
                ],
              ),
              GridView.builder(
                padding: EdgeInsets.only(top: height(context) / 40),
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: width(context) / 30,
                    childAspectRatio: 0.580),
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context, index) => AppColum(
                    index: index,
                    price: data[index]["price"],
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
