import 'package:e_commerce/res/commen/app_searchbar.dart';
import 'package:flutter/material.dart';

import '../res/commen/mediaquery/app_mediaquery.dart';
import '../res/constant/app_colors.dart';

class FilterListScreen extends StatefulWidget {
  const FilterListScreen({super.key});

  @override
  State<FilterListScreen> createState() => _FilterListScreenState();
}

class _FilterListScreenState extends State<FilterListScreen> {
  int chooseValue = 0;
  List<String> buttonData = ["Discard", "Apply"];
  bool isChecked = false;
  List<String> brandName = [
    "adidas",
    "adidas Originals",
    "Blend",
    "Boutique Moschino",
    "Champion",
    "Diesel",
    "Jack & Jones",
    "Naf Naf",
    "Red Valentino",
    "s.Oliver",
  ];

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
          "Brand",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: AppColors.iconAndTitleColor,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width(context) / 40),
        child: Column(
          children: [
            const AppSearchBar(),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 4,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 10),
              itemBuilder: (context, index) => OutlinedButton(
                onPressed: () {
                  setState(
                    () {
                      chooseValue = index;
                    },
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      chooseValue == index
                          ? AppColors.elevatedButtonColor
                          : AppColors.backGroundColor),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(width(context) / 10),
                    ),
                  ),
                  side: MaterialStateProperty.all(
                    BorderSide(
                        color: chooseValue == index
                            ? AppColors.elevatedButtonColor
                            : AppColors.iconAndTitleColor,
                        width: 2),
                  ),
                ),
                child: Text(
                  buttonData[index],
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.iconAndTitleColor),
                ),
              ),
              itemCount: buttonData.length,
              shrinkWrap: true,
            ),
            ListView.builder(
              itemBuilder: (context, index) => StatefulBuilder(
                builder: (context, setState) => InkWell(
                  onTap: () {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        brandName[index],
                        style: TextStyle(
                          color: isChecked
                              ? AppColors.elevatedButtonColor
                              : AppColors.iconAndTitleColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Transform.scale(
                        scale: 1.3,
                        child: Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          value: isChecked,
                          activeColor: AppColors.elevatedButtonColor,
                          onChanged: (value) {
                            setState(() {
                              isChecked = !isChecked;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              itemCount: brandName.length,
              shrinkWrap: true,
            )
          ],
        ),
      ),
    );
  }
}
