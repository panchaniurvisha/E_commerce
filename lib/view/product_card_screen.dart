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
          GridView.builder(
            itemCount: image.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) => Image.asset(image[index]),
          ),
        ],
      ),
    );
  }
}
