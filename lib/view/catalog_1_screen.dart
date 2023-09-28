import 'package:e_commerce/res/commen/app_button.dart';
import 'package:flutter/material.dart';

import '../res/commen/mediaquery/app_mediaquery.dart';
import '../res/constant/app_colors.dart';

class CatalogOneScreen extends StatefulWidget {
  const CatalogOneScreen({super.key});

  @override
  State<CatalogOneScreen> createState() => _CatalogOneScreenState();
}

class _CatalogOneScreenState extends State<CatalogOneScreen> {
  List<Widget> listOfButton(BuildContext context) {
    return [
      const AppButton(text: "T-shirts"),
      AppButton(text: "Crop tops"),
      AppButton(text: "Sleeveless"),
      AppButton(text: "Blouses"),
      AppButton(text: "T-shirts"),
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
                child: const Icon(Icons.search,
                    color: AppColors.iconAndTitleColor),
              ),
            ],
            centerTitle: true),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: width(context) / 40),
          child: Column(
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
                child: ListView.separated(
                    itemBuilder: (context, index) => Row(
                          children: [...listOfButton(context)],
                        ),
                    separatorBuilder: (context, index) =>
                        SizedBox(width: width(context) / 1),
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true),
              ),
            ],
          ),
        ));
  }
}
