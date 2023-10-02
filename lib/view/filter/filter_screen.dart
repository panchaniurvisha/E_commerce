import 'package:e_commerce/res/commen/app_elevated_button.dart';
import 'package:e_commerce/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

import '../../res/commen/mediaquery/app_mediaquery.dart';
import '../../res/constant/app_colors.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  List<bool> switchButton = List.generate(5, (index) => false);

  List<Widget> colorButtonList(BuildContext context) {
    List<Color> colors = [
      AppColors.blackColor,
      AppColors.iconAndTitleColor,
      AppColors.orangeColor,
      AppColors.grayColor,
      AppColors.skyBlueColor
    ];
    return List.generate(5, (index) {
      return Padding(
        padding: EdgeInsets.only(right: width(context) / 60),
        child: AppElevatedButton(
          shape: MaterialStateProperty.all(
            CircleBorder(
              side: BorderSide(
                strokeAlign: 8,
                color: switchButton[index]
                    ? AppColors.labelTextColor
                    : AppColors.backGroundColor,
              ),
            ),
          ),
          borderColor:
              switchButton[index] ? AppColors.labelTextColor : colors[index],
          backgroundColor: MaterialStateProperty.all(colors[index]),
          onPressed: () {
            setState(() {
              switchButton[index] = !switchButton[index];
              for (int i = 0; i < switchButton.length; i++) {
                if (i != index) {
                  switchButton[i] = false;
                }
              }
            });
          },
          minimumSize: MaterialStateProperty.all(
            Size(width(context) / 6, height(context) / 20),
          ),
        ),
      );
    });
  }

  List<bool> pressedValue = List.generate(5, (index) => false);
  List<Widget> outlineButtonList(BuildContext context) {
    List<String> buttonLabels = ["Xs", "S", "M", "L", "XL"];
    return List.generate(5, (index) {
      return Padding(
        padding: EdgeInsets.only(right: width(context) / 30),
        child: AppElevatedButton(
          text: buttonLabels[index],
          borderColor: pressedValue[index]
              ? AppColors.elevatedButtonColor
              : AppColors.labelTextColor,
          backgroundColor: MaterialStateProperty.all(pressedValue[index]
              ? AppColors.elevatedButtonColor
              : AppColors.backGroundColor),
          color: pressedValue[index]
              ? AppColors.backGroundColor
              : AppColors.iconAndTitleColor,
          onPressed: () {
            setState(() {
              pressedValue[index] = !pressedValue[index];
              for (int i = 0; i < pressedValue.length; i++) {
                if (i != index) {
                  pressedValue[i] = false;
                }
              }
            });
          },
          minimumSize: MaterialStateProperty.all(
            Size(width(context) / 15, height(context) / 45),
          ),
        ),
      );
    });
  }

  double start = 0.0;
  double end = 700.0;
  int selectedValue = 0;
  int chooseValue = 0;
  List<String> data = ["All", "Women", "Men", "Boys", "Girls", "Kids"];
  List<String> buttonData = ["Discard", "Apply"];

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
          "Filters",
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Price range",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: AppColors.iconAndTitleColor,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$${start.toStringAsFixed(2)}',
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.iconAndTitleColor)),
                Text('\$${end.toStringAsFixed(2)}',
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.iconAndTitleColor)),
              ],
            ),
            RangeSlider(
                inactiveColor: AppColors.labelTextColor,
                activeColor: AppColors.elevatedButtonColor,
                values: RangeValues(start, end),
                labels: RangeLabels(start.toString(), end.toString()),
                onChanged: (value) {
                  setState(() {
                    start = value.start;
                    end = value.end;
                  });
                },
                min: 0.0,
                max: 700.0),
            Divider(color: Colors.black.withOpacity(0.2)),
            const Text(
              "Colors",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: AppColors.iconAndTitleColor,
              ),
            ),
            Row(
              children: [...colorButtonList(context)],
            ),
            Divider(color: Colors.black.withOpacity(0.2)),
            const Text(
              "Sizes",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: AppColors.iconAndTitleColor,
              ),
            ),
            Row(
              children: [...outlineButtonList(context)],
            ),
            Divider(color: Colors.black.withOpacity(0.2)),
            const Text(
              "Category",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: AppColors.iconAndTitleColor,
              ),
            ),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 2.5,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 10),
              itemBuilder: (context, index) => OutlinedButton(
                onPressed: () {
                  setState(() {
                    selectedValue = index;
                  });
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        selectedValue == index
                            ? AppColors.elevatedButtonColor
                            : AppColors.backGroundColor),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(width(context) / 40))),
                    side: MaterialStateProperty.all(BorderSide(
                        color: selectedValue == index
                            ? AppColors.elevatedButtonColor
                            : AppColors.labelTextColor,
                        width: 2))),
                child: Text(
                  data[index],
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: selectedValue == index
                          ? AppColors.textFieldFillColor
                          : AppColors.iconAndTitleColor),
                ),
              ),
              itemCount: data.length,
              shrinkWrap: true,
            ),
            Divider(color: Colors.black.withOpacity(0.2)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Brand",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: AppColors.iconAndTitleColor,
                      ),
                    ),
                    Text(
                      "adidas Originals, Jack & Jones, s.Oliver",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: AppColors.labelTextColor),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () => Navigator.of(context, rootNavigator: true)
                      .pushNamed(RoutesName.filterListScreen),
                  icon: const Icon(Icons.navigate_next,
                      color: AppColors.iconAndTitleColor, size: 30),
                )
              ],
            ),
            Container(
              height: height(context) / 8,
              decoration: const BoxDecoration(
                color: AppColors.backGroundColor,
                boxShadow: [
                  BoxShadow(
                      color: AppColors.shadowColor,
                      blurRadius: 16,
                      offset: Offset(0, -4),
                      spreadRadius: 0)
                ],
              ),
              child: GridView.builder(
                padding: EdgeInsets.only(
                  top: height(context) / 50,
                  left: width(context) / 40,
                  right: width(context) / 40,
                ),
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
                        borderRadius:
                            BorderRadius.circular(width(context) / 10),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: chooseValue == index
                            ? AppColors.elevatedButtonColor
                            : AppColors.iconAndTitleColor,
                      ),
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
            ),
          ],
        ),
      ),
    );
  }
}
