import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:e_commerce/res/constant/app_colors.dart';
import 'package:e_commerce/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

class ShippingAddressScreen extends StatefulWidget {
  const ShippingAddressScreen({super.key});

  @override
  State<ShippingAddressScreen> createState() => _ShippingAddressScreenState();
}

class _ShippingAddressScreenState extends State<ShippingAddressScreen> {
  List<Map> data = [
    {
      "subTitle": "3 Newbridge Court\nChino Hills, CA 91709, United States",
      "edit": "Edit",
    },
    {
      "subTitle": "3 Newbridge Court\nChino Hills, CA 91709, United States",
      "edit": "Edit",
    },
    {
      "subTitle": "51 Riverside\nChino Hills, CA 91709, United States",
      "edit": "Edit",
    }
  ];
  List<bool> isCheckedList = List.generate(3, (index) => false);
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
          "Shipping Address",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: AppColors.iconAndTitleColor),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(
          horizontal: width(context) / 30,
        ),
        itemCount: data.length,
        shrinkWrap: true,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.symmetric(
            vertical: height(context) / 60,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width(context) / 30),
              color: AppColors.textFieldFillColor),
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: height(context) / 60,
                horizontal: width(context) / 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Jane Doe",
                      style: TextStyle(
                          height: 2.5,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.iconAndTitleColor),
                    ),
                    Text(
                      data[index]["subTitle"],
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.iconAndTitleColor),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: height(context) / 26,
                          width: width(context) / 20,
                          child: Checkbox(
                            fillColor: MaterialStateProperty.all(
                                AppColors.iconAndTitleColor),
                            checkColor: AppColors.backGroundColor,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(width(context) / 80)),
                            value: isCheckedList[index],
                            onChanged: (value) {
                              setState(() {
                                isCheckedList[index] = !isCheckedList[index];
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: width(context) / 30,
                        ),
                        const Text(
                          "Use as the shipping address",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.iconAndTitleColor),
                        ),
                      ],
                    ),
                  ],
                ),
                InkWell(
                  child: Text(
                    data[index]["edit"],
                    style: const TextStyle(
                        height: 2.5,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.elevatedButtonColor),
                  ),
                  onTap: () => Navigator.of(context, rootNavigator: true)
                      .pushNamed(RoutesName.addShippingAddressScreen),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: height(context) / 5.5),
        child: FloatingActionButton.small(
          backgroundColor: AppColors.iconAndTitleColor,
          shape: const CircleBorder(),
          child: const Icon(
            Icons.add,
            color: AppColors.backGroundColor,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
