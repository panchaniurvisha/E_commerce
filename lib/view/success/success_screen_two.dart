import 'package:e_commerce/res/commen/app_elevated_button.dart';
import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:e_commerce/res/constant/app_colors.dart';
import 'package:e_commerce/res/constant/app_images.dart';
import 'package:e_commerce/view/bottom_bar/bottom_screen.dart';
import 'package:flutter/material.dart';

class SuccessScreenTwo extends StatefulWidget {
  const SuccessScreenTwo({super.key});

  @override
  State<SuccessScreenTwo> createState() => _SuccessScreenTwoState();
}

class _SuccessScreenTwoState extends State<SuccessScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.bagImage, height: height(context) / 5),
            const Text(
              "Success",
              style: TextStyle(
                  height: 2.5,
                  fontWeight: FontWeight.w700,
                  fontSize: 34,
                  color: AppColors.iconAndTitleColor),
            ),
            const Text(
              "Your order will be delivered soon.\nThank you for choosing our app!",
              style: TextStyle(
                  fontSize: 14,
                  color: AppColors.primarySwitchColor,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width(context) / 30, vertical: height(context) / 20),
        child: AppElevatedButton(
          onPressed: () {
            Navigator.of(context, rootNavigator: true).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const BottomScreen(),
              ),
            );
          },
          text: "CONTINUE SHOPPING",
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(width(context) / 10))),
        ),
      ),
    );
  }
}
