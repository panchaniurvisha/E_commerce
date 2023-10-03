import 'package:e_commerce/res/commen/app_order_card.dart';
import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:e_commerce/res/constant/app_colors.dart';
import 'package:flutter/material.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({super.key});

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  int selectedTabs = 0;

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
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              const Text(
                "My Orders",
                style: TextStyle(
                    color: AppColors.iconAndTitleColor,
                    fontSize: 34,
                    fontWeight: FontWeight.w700),
              ),
              TabBar(
                indicatorColor: Colors.transparent,
                unselectedLabelColor: AppColors.iconAndTitleColor,
                labelColor: AppColors.textFieldFillColor,
                dividerColor: Colors.transparent,
                tabs: [
                  InkWell(
                      splashColor: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                            color: selectedTabs == 0
                                ? AppColors.iconAndTitleColor
                                : Colors.transparent,
                            borderRadius:
                                BorderRadius.circular(width(context) / 10)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: width(context) / 24,
                              vertical: height(context) / 80),
                          child: Text(
                            "Delivered",
                            style: TextStyle(
                                fontSize: 12,
                                color: selectedTabs == 0
                                    ? AppColors
                                        .textFieldFillColor // Text color for selected tab
                                    : AppColors.iconAndTitleColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      onTap: () => setState(() {
                            selectedTabs = 0;
                          })),
                  InkWell(
                      splashColor: Colors.transparent,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: height(context) / 80,
                            horizontal: width(context) / 28),
                        decoration: BoxDecoration(
                            color: selectedTabs == 1
                                ? AppColors.iconAndTitleColor
                                : Colors.transparent,
                            borderRadius:
                                BorderRadius.circular(width(context) / 10)),
                        child: Text(
                          "Processing",
                          style: TextStyle(
                              fontSize: 12,
                              color: selectedTabs == 1
                                  ? AppColors
                                      .textFieldFillColor // Text color for selected tab
                                  : AppColors.iconAndTitleColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      onTap: () => setState(() {
                            selectedTabs = 1;
                          })),
                  InkWell(
                      splashColor: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                            color: selectedTabs == 2
                                ? AppColors.iconAndTitleColor
                                : Colors.transparent,
                            borderRadius:
                                BorderRadius.circular(width(context) / 10)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: width(context) / 24,
                              vertical: height(context) / 80),
                          child: Text(
                            "Cancelled",
                            style: TextStyle(
                                fontSize: 12,
                                color: selectedTabs == 2
                                    ? AppColors
                                        .textFieldFillColor // Text color for selected tab
                                    : AppColors.iconAndTitleColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      onTap: () => setState(() {
                            selectedTabs = 2;
                          })),
                ],
              ),
              const Expanded(
                child: TabBarView(children: [
                  SizedBox(
                      child: Column(
                    children: [
                      AppOrderCard(),
                      AppOrderCard(),
                      AppOrderCard(),
                    ],
                  )),
                  Center(
                    child: Text(
                      "No Data Found",
                      style: TextStyle(
                          color: AppColors.iconAndTitleColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                  ),
                  Center(
                    child: Text(
                      "No Data Found",
                      style: TextStyle(
                          color: AppColors.iconAndTitleColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                  ),
                ]),
              )
            ],
          ),
        ));
  }
}
