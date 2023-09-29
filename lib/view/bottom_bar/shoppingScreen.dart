import 'package:e_commerce/res/commen/app_list_title.dart';
import 'package:e_commerce/view/categories_2_screen.dart';
import 'package:flutter/material.dart';

import '../../res/commen/mediaquery/app_mediaquery.dart';
import '../../res/constant/app_colors.dart';
import '../../res/constant/app_images.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({super.key});

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  SliverAppBar showSliverAppBar() {
    return SliverAppBar(
        expandedHeight: 100,
        pinned: true,
        floating: true,
        snap: true,
        leading: Padding(
          padding: EdgeInsets.only(right: width(context) / 20),
          child: const Icon(
            Icons.arrow_back_ios_rounded,
            color: AppColors.iconAndTitleColor,
          ),
        ),
        title: const Text(
          "Categories",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: AppColors.iconAndTitleColor),
        ),
        bottom: const TabBar(
            indicatorColor: AppColors.elevatedButtonColor,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: AppColors.labelTextColor,
            labelColor: AppColors.primarySwitchColor,
            indicatorPadding: EdgeInsets.zero,
            dividerColor: Colors.transparent,
            tabs: [
              Tab(
                text: "Women",
              ),
              Tab(
                text: "Men",
              ),
              Tab(
                text: "Kids",
              )
            ]),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: width(context) / 40,
            ),
            child: const Icon(Icons.search, color: AppColors.iconAndTitleColor),
          ),
        ],
        centerTitle: true);
  }

  List<Widget> listTitle(BuildContext context) {
    return [
      AppListTitle(
        text: "New",
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoriesTwoScreen(),
          ),
        ),
        // onTap: () =>
        //
        //      Navigator.pushNamed(context, RoutesName.categoriesTwoScreen),
        image: AppImages.summerSales1,
      ),
      const AppListTitle(
        text: "Clothes",
        image: AppImages.summerSales2,
      ),
      const AppListTitle(
        text: "Shoes",
        image: AppImages.summerSales3,
      ),
      const AppListTitle(
        text: "Accesories",
        image: AppImages.summerSales4,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width(context) / 40),
          child: TabBarView(children: [
            CustomScrollView(
              slivers: [
                showSliverAppBar(),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Container(
                        height: height(context) / 8,
                        margin: EdgeInsets.only(top: height(context) / 60),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            width(context) / 30,
                          ),
                          color: AppColors.priceColor,
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "SUMMER SALES",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.iconAndTitleColor),
                            ),
                            Text(
                              "Up to 50% off",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.iconAndTitleColor),
                            ),
                          ],
                        ),
                      ),
                      ...listTitle(context),
                    ],
                  ),
                )
              ],
            ),
            CustomScrollView(
              slivers: [
                showSliverAppBar(),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      const Center(
                        child: Text("No Data Found",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: AppColors.priceColor)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            CustomScrollView(
              slivers: [
                showSliverAppBar(),
                SliverList(
                  delegate: SliverChildListDelegate([
                    const Center(
                      child: Text("No Data Found",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: AppColors.priceColor)),
                    )
                  ]),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
