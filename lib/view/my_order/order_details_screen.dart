import 'package:e_commerce/res/commen/app_order_details_card.dart';
import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:e_commerce/res/constant/app_colors.dart';
import 'package:e_commerce/res/constant/app_images.dart';
import 'package:flutter/material.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  int chooseValue = 0;
  List<String> buttonData = [
    "Reorder",
    "Leave feedback",
  ];
  List<Widget> outlineButtonList(BuildContext context) {
    List<String> image = [
      AppImages.blackTShirtGirl,
      AppImages.girlTShirtTwo,
      AppImages.girlTShirt,
    ];
    return List.generate(3, (index) {
      return AppOrderDetailsCard(image: image[index]);
    });
  }

  List<Widget> listOfText() {
    List<String> text = [
      "Shipping Address:",
      "\nPayment method:",
      "Delivery method:",
      "Discount:",
      "Total Amount:",
    ];
    return List.generate(5, (index) {
      return Text(
        text[index],
        style: const TextStyle(
          height: 3,
          fontSize: 14,
          color: AppColors.labelTextColor,
          fontWeight: FontWeight.w400,
        ),
      );
    });
  }

  List<Widget> listOfInformationText() {
    List<String> text = [
      "3 Newbridge Court ,Chino Hills,\nCA 91709, United States",
      "**** **** **** 3947",
      "FedEx, 3 days, 15\$",
      "10%, Personal promo code",
      "133\$",
    ];
    return List.generate(5, (index) {
      return Text(
        text[index],
        style: const TextStyle(
          height: 3,
          fontSize: 14,
          color: AppColors.iconAndTitleColor,
          fontWeight: FontWeight.w500,
        ),
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
          title: const Text(
            "Order Details",
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
        padding: EdgeInsets.symmetric(
            vertical: height(context) / 50, horizontal: width(context) / 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Order №1947034",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.iconAndTitleColor),
                  ),
                  Text(
                    "05-12-2019",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.labelTextColor),
                  )
                ],
              ),
              const Row(
                children: [
                  Text(
                    "Tracking number:",
                    style: TextStyle(
                        height: 2,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.labelTextColor),
                  ),
                  Text(
                    "IW3475453455",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.iconAndTitleColor),
                  ),
                  Spacer(),
                  Text(
                    "Delivered",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.suffixIconColor),
                  ),
                ],
              ),
              const Text(
                "3 items",
                style: TextStyle(
                    height: 2,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.iconAndTitleColor),
              ),
              ...outlineButtonList(context),
              Padding(
                padding: EdgeInsets.symmetric(vertical: height(context) / 40),
                child: const Text(
                  "Order information",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.iconAndTitleColor),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...listOfText(),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...listOfInformationText(),
                    ],
                  )
                ],
              ),
              Container(
                height: height(context) / 8,
                decoration: const BoxDecoration(
                  color: AppColors.backGroundColor,
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.shadowColor,
                        blurRadius: 16,
                        offset: Offset(0, -4),
                        spreadRadius: 0)
                  ],
                ),
                child: GridView.builder(
                  padding: EdgeInsets.only(
                    top: height(context) / 50,
                    left: width(context) / 40,
                    right: width(context) / 40,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 4,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) => OutlinedButton(
                    onPressed: () {
                      setState(
                        () {
                          chooseValue = index;
                        },
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          chooseValue == index
                              ? AppColors.elevatedButtonColor
                              : AppColors.backGroundColor),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(width(context) / 10),
                        ),
                      ),
                      side: MaterialStateProperty.all(
                        BorderSide(
                          color: chooseValue == index
                              ? AppColors.elevatedButtonColor
                              : AppColors.iconAndTitleColor,
                        ),
                      ),
                    ),
                    child: Text(
                      buttonData[index],
                      style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: AppColors.iconAndTitleColor),
                    ),
                  ),
                  itemCount: buttonData.length,
                  shrinkWrap: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
