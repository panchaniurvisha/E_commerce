import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:e_commerce/res/constant/app_colors.dart';
import 'package:e_commerce/view/my_order/order_details_screen.dart';
import 'package:flutter/material.dart';

class AppOrderCard extends StatelessWidget {
  const AppOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: height(context) / 50),
      decoration: BoxDecoration(
        color: AppColors.textFieldFillColor,
        borderRadius: BorderRadius.circular(width(context) / 40),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width(context) / 30, vertical: height(context) / 40),
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
                Text("IW3475453455",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.iconAndTitleColor))
              ],
            ),
            const Row(
              children: [
                Text(
                  "Quantity:",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.labelTextColor),
                ),
                Text(" 3",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.iconAndTitleColor)),
                Spacer(),
                Text(
                  "Total Amount:",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.labelTextColor),
                ),
                Text("112\$",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.iconAndTitleColor))
              ],
            ),
            SizedBox(
              height: height(context) / 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OrderDetailsScreen(),
                    ),
                  ),
                  child: const Text(
                    "Details",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.iconAndTitleColor,
                    ),
                  ),
                ),
                const Text(
                  "Delivered",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.suffixIconColor),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
