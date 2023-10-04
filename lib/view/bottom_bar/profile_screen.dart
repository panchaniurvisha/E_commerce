import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:e_commerce/res/constant/app_colors.dart';
import 'package:e_commerce/res/constant/app_images.dart';
import 'package:e_commerce/utils/routes/routes_name.dart';
import 'package:e_commerce/view/bottom_bar/beg_screen.dart';
import 'package:e_commerce/view/my_order/my_order_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<Map> data = [
    {
      "title": "My orders",
      "subTitle": "Already have 12 orders",
    },
    {
      "title": "Shipping addresses",
      "subTitle": "3 ddresses",
    },
    {
      "title": "Payment methods",
      "subTitle": "Visa **34",
    },
    {
      "title": "Promocodes",
      "subTitle": "You have special promocodes",
    },
    {
      "title": "You have special promocodes",
      "subTitle": "Reviews for 4 items",
    },
    {
      "title": "Settings",
      "subTitle": "Notifications, password",
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "My profile",
            style: TextStyle(
                color: AppColors.iconAndTitleColor,
                fontSize: 34,
                fontWeight: FontWeight.w700),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: height(context) / 30,
                horizontal: width(context) / 40),
            child: Row(
              children: [
                Image.asset(AppImages.profileImage,
                    height: height(context) / 12),
                Padding(
                  padding: EdgeInsets.only(left: width(context) / 22),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Matilda Brown",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.iconAndTitleColor,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "matildabrown@mail.com",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primarySwitchColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            itemBuilder: (context, index) => Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width(context) / 40,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data[index]["title"],
                              style: const TextStyle(
                                height: 2,
                                fontWeight: FontWeight.w600,
                                color: AppColors.iconAndTitleColor,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              data[index]["title"],
                              style: const TextStyle(
                                  height: 2,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.labelTextColor),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.navigate_next_rounded,
                            color: AppColors.primarySwitchColor),
                        onPressed: () {
                          index == 0
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MyOrderScreen(),
                                  ),
                                )
                              : index == 5
                                  ? Navigator.of(context, rootNavigator: true)
                                      .pushNamed(RoutesName.settingScreen)
                                  : index == 1
                                      ? Navigator.of(context,
                                              rootNavigator: true)
                                          .pushNamed(
                                              RoutesName.shippingAddressScreen)
                                      : index == 2
                                          ? Navigator.of(context,
                                                  rootNavigator: true)
                                              .pushNamed(
                                                  RoutesName.paymentCardScreen)
                                          : index == 4
                                              ? Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const BegScreen(),
                                                  ),
                                                )
                                              : const SizedBox();
                        },
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: AppColors.labelTextColor,
                ),
              ],
            ),
            itemCount: data.length,
            shrinkWrap: true,
          ),
        ],
      ),
    );
  }
}
