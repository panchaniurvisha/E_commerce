import 'package:e_commerce/res/commen/app_elevated_button.dart';
import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:e_commerce/res/constant/app_colors.dart';
import 'package:e_commerce/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

import '../res/constant/app_images.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
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
          "Checkout",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: AppColors.iconAndTitleColor),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width(context) / 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Shipping address",
              style: TextStyle(
                color: AppColors.iconAndTitleColor,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColors.textFieldFillColor,
                borderRadius: BorderRadius.circular(width(context) / 30),
              ),
              child: Padding(
                padding: EdgeInsets.all(height(context) / 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jane Doe",
                          style: TextStyle(
                              height: 2,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.iconAndTitleColor),
                        ),
                        Text(
                          "3 Newbridge Court\nChino Hills, CA 91709, United States",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.iconAndTitleColor),
                        ),
                      ],
                    ),
                    InkWell(
                      child: Text(
                        "Change",
                        style: TextStyle(
                          color: AppColors.errorColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onTap: () => Navigator.of(context, rootNavigator: true)
                          .pushNamed(RoutesName.shippingAddressScreen),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: width(context) / 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Payment",
                    style: TextStyle(
                      color: AppColors.iconAndTitleColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  InkWell(
                    splashColor: AppColors.backGroundColor,
                    child: const Text(
                      "Change",
                      style: TextStyle(
                        color: AppColors.errorColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onTap: () => Navigator.of(context, rootNavigator: true)
                        .pushNamed(RoutesName.paymentCardScreen),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width(context) / 20),
                    color: AppColors.iconAndTitleColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: height(context) / 60,
                        horizontal: width(context) / 20),
                    child: Image.asset(
                      AppImages.mastercardLabel,
                      height: height(context) / 20,
                    ),
                  ),
                ),
                SizedBox(
                  width: width(context) / 20,
                ),
                const Text(
                  "**** **** **** 3947",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppColors.primarySwitchColor,
                    fontSize: 14,
                  ),
                )
              ],
            ),
            const Text(
              "Delivery method",
              style: TextStyle(
                color: AppColors.iconAndTitleColor,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(width(context) / 50),
                    color: AppColors.iconAndTitleColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: height(context) / 40,
                        horizontal: width(context) / 30),
                    child: Column(
                      children: [
                        Image.asset(
                          AppImages.fedex,
                          height: height(context) / 40,
                        ),
                        const Text("2-3 days",
                            style: TextStyle(
                                color: AppColors.labelTextColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 11))
                      ],
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(
                        vertical: height(context) / 32,
                        horizontal: width(context) / 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width(context) / 50),
                      color: AppColors.iconAndTitleColor,
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          AppImages.usps,
                          height: height(context) / 80,
                        ),
                        const Text("2-3 days",
                            style: TextStyle(
                                color: AppColors.labelTextColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 11))
                      ],
                    )),
                Container(
                    padding: EdgeInsets.symmetric(
                        vertical: height(context) / 40,
                        horizontal: width(context) / 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width(context) / 50),
                      color: AppColors.iconAndTitleColor,
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          AppImages.dhl,
                          height: height(context) / 40,
                        ),
                        const Text("2-3 days",
                            style: TextStyle(
                                color: AppColors.labelTextColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 11))
                      ],
                    )),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Order:",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.labelTextColor)),
                Text(
                  "112\$",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.iconAndTitleColor),
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Delivery:",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.labelTextColor)),
                Text(
                  "15\$",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.iconAndTitleColor),
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Summary:",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.labelTextColor)),
                Text(
                  "127\$",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.iconAndTitleColor),
                )
              ],
            ),
            AppElevatedButton(
              text: "SUBMIT ORDER",
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(width(context) / 10))),
            )
          ],
        ),
      ),
    );
  }
}
