import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:e_commerce/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

import '../../res/commen/app_beg_list.dart';
import '../../res/commen/app_elevated_button.dart';
import '../../res/commen/app_promo_code_container.dart';
import '../../res/commen/mediaquery/app_promo_code_list.dart';
import '../../res/constant/app_colors.dart';
import '../../res/constant/app_images.dart';

class BegScreen extends StatefulWidget {
  const BegScreen({super.key});

  @override
  State<BegScreen> createState() => _BegScreenState();
}

class _BegScreenState extends State<BegScreen> {
  List<Map> data = [
    {
      "image": AppImages.girlTShirt,
      "name": "Pullover",
      "color": "Black",
      "size": "L",
      "price": "51\$",
    },
    {
      "image": AppImages.gentsTShirt,
      "name": "T-Shirt",
      "color": "Gray",
      "size": "L",
      "price": "30\$",
    },
    {
      "image": AppImages.girlTShirtTwo,
      "name": "Sport Dress",
      "color": "Black",
      "size": "M",
      "price": "43\$",
    }
  ];

  List<Map> promoCodeData = [
    {
      "title": "Personal offer",
      "trailing": "6 days remaining",
      "subTitle": "mypromocode2020",
      "percentage": "10%\noff",
    },
    {
      "title": "Summer Sale",
      "trailing": "23 days remaining",
      "subTitle": "summer2020",
      "percentage": "15%\noff",
    },
    {
      "title": "Personal offer",
      "trailing": "6 days remaining",
      "subTitle": "mypromocode2020",
      "percentage": "22%\noff",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: width(context) / 40),
            child: const Icon(Icons.search, color: AppColors.iconAndTitleColor),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width(context) / 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "My Beg",
              style: TextStyle(
                  color: AppColors.iconAndTitleColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 34),
            ),
            Flexible(
              child: ListView.separated(
                padding: EdgeInsets.symmetric(vertical: height(context) / 40),
                itemBuilder: (context, index) => AppBegList(
                  color: data[index]["color"],
                  size: data[index]["size"],
                  price: data[index]["price"],
                  image: data[index]["image"],
                  clothesName: data[index]["name"],
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: height(context) / 30,
                ),
                itemCount: data.length,
                shrinkWrap: true,
              ),
            ),
            AppPromoCodeContainer(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                    isDismissible: true,
                    context: context,
                    builder: (context) => showModelBottomSheet());
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height(context) / 40),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total amount",
                    style: TextStyle(
                        color: AppColors.labelTextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "124\$",
                    style: TextStyle(
                        color: AppColors.iconAndTitleColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            AppElevatedButton(
              onPressed: () => Navigator.of(context, rootNavigator: true)
                  .pushNamed(RoutesName.checkOutScreen),
              text: "CHECK OUT",
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(width(context) / 10)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  showModelBottomSheet() {
    return Container(
      height: height(context) / 2,
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
            horizontal: width(context) / 40, vertical: height(context) / 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppPromoCodeContainer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height(context) / 40),
              child: const Text(
                "Your Promo Codes",
                style: TextStyle(
                    color: AppColors.iconAndTitleColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: height(context) / 3.5,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => AppPromoCodeList(
                        percentage: promoCodeData[index]["percentage"],
                        trailing: promoCodeData[index]["trailing"],
                        title: promoCodeData[index]["title"],
                        subTitle: promoCodeData[index]["subTitle"],
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: height(context) / 40,
                      ),
                  itemCount: promoCodeData.length),
            ),
          ],
        ),
      ),
    );
  }
}
