import 'package:e_commerce/res/commen/app_elevated_button.dart';
import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:e_commerce/res/constant/app_images.dart';
import 'package:e_commerce/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(AppImages.successImage,
            fit: BoxFit.fitHeight,
            height: height(context),
            width: double.infinity),
        Padding(
          padding: EdgeInsets.only(top: height(context) / 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Success!",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 34,
                    fontWeight: FontWeight.w700),
              ),
              const Text(
                "Your order will be delivered soon.\nThank you for choosing our app!",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width(context) / 5)
                    .copyWith(top: height(context) / 30),
                child: AppElevatedButton(
                  text: "Continue shopping",
                  // minimumSize: MaterialStateProperty.all(
                  //     Size(width(context) / 5, height(context) / 40)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(width(context) / 10),
                    ),
                  ),
                   onPressed: () => Navigator.of(context,rootNavigator: true).pushNamed(RoutesName.successScreenTwo),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
