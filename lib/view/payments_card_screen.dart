import 'package:e_commerce/res/commen/app_elevated_button.dart';
import 'package:e_commerce/res/commen/app_textfield.dart';
import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:e_commerce/res/constant/app_colors.dart';
import 'package:flutter/material.dart';

import '../res/constant/app_images.dart';

class PaymentCardScreen extends StatefulWidget {
  const PaymentCardScreen({super.key});

  @override
  State<PaymentCardScreen> createState() => _PaymentCardScreenState();
}

class _PaymentCardScreenState extends State<PaymentCardScreen> {
  bool isChecked = false;
  bool isPressed = false;
  bool isSelect = false;

  // List<Widget> listOfCard(BuildContext context) {
  //   List<Map> data = [
  //     {"title": "Name on card", "subTitle": null, "image": null},
  //     {
  //       "title": "Card number",
  //       "subTitle": "5546 8205 3693 3947",
  //       "image": AppImages.mastercardLabel,
  //     },
  //     {"title": "Expire Date", "subTitle": "05/23", "image": null},
  //     {
  //       "title": "CVV",
  //       "subTitle": "567",
  //       "image": AppImages.helpOutline,
  //     },
  //   ];
  //   return List.generate(
  //     4,
  //     (index) {
  //       return ListTile(
  //           tileColor: AppColors.orangeColor,
  //           shape: RoundedRectangleBorder(
  //             borderRadius: BorderRadius.circular(width(context) / 10),
  //           ),
  //           textColor: AppColors.iconAndTitleColor,
  //           titleTextStyle: const TextStyle(
  //             color: AppColors.labelTextColor,
  //             fontWeight: FontWeight.w500,
  //             fontSize: 14,
  //           ),
  //           title: Text(data[index]["title"]),
  //           trailing: data[index]["image"] != null
  //               ? Image.asset(
  //                   (data[index]["image"]),
  //                   height: height(context) / 40,
  //                 )
  //               : null,
  //           subtitle: data[index]["subTitle"] != null
  //               ? Text(data[index]["subTitle"])
  //               : null);
  //     },
  //   );
  // }

  TextEditingController nameOFCardController = TextEditingController();
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController expireDateController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
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
          "Payment methods",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: AppColors.iconAndTitleColor),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width(context) / 40, vertical: height(context) / 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Your payment cards",
              style: TextStyle(
                color: AppColors.iconAndTitleColor,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(width(context) / 30),
              child: Image.asset(
                AppImages.masterCard,
              ),
            ),
            Row(
              children: [
                Checkbox(
                  fillColor:
                      MaterialStateProperty.all(AppColors.iconAndTitleColor),
                  checkColor: AppColors.backGroundColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(width(context) / 80)),
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                ),
                const Text(
                  "Use as default payment method",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.iconAndTitleColor),
                ),
              ],
            ),
            ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(width(context) / 30),
              child: Image.asset(
                AppImages.visaCard,
              ),
            ),
            Row(
              children: [
                Checkbox(
                  fillColor:
                      MaterialStateProperty.all(AppColors.iconAndTitleColor),
                  checkColor: AppColors.backGroundColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(width(context) / 80)),
                  value: isPressed,
                  onChanged: (value) {
                    setState(() {
                      isPressed = !isPressed;
                    });
                  },
                ),
                const Text(
                  "Use as default payment method",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.iconAndTitleColor),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        mini: true,
        backgroundColor: AppColors.iconAndTitleColor,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: AppColors.backGroundColor,
        ),
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: Colors.transparent,
              isScrollControlled: true,
              isDismissible: true,
              context: context,
              builder: (context) => showModelBottomSheet());
        },
      ),
    );
  }

  showModelBottomSheet() {
    return Container(
      height: height(context) / 1.5,
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
            const Center(
              child: Text(
                "Add new card",
                style: TextStyle(
                    color: AppColors.iconAndTitleColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ),
            // ...listOfCard(context),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height(context) / 80),
              child: AppTextField(
                labelText: "Name on card",
                controller: nameOFCardController,
              ),
            ),
            AppTextField(
              labelText: "Card number",
              controller: cardNumberController,
              suffixIcon: Padding(
                padding: EdgeInsets.all(width(context) / 20),
                child: Image.asset(AppImages.mastercardLabel,
                    height: height(context) / 30),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height(context) / 80),
              child: AppTextField(
                labelText: "Expire Date",
                controller: expireDateController,
              ),
            ),
            AppTextField(
              labelText: "CVV",
              controller: cvvController,
              suffixIcon: Padding(
                padding: EdgeInsets.all(width(context) / 20),
                child: Image.asset(AppImages.helpOutline,
                    height: height(context) / 30),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  fillColor:
                      MaterialStateProperty.all(AppColors.iconAndTitleColor),
                  checkColor: AppColors.backGroundColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(width(context) / 80)),
                  value: isSelect,
                  onChanged: (value) {
                    setState(() {
                      isSelect = !isSelect;
                    });
                  },
                ),
                const Text(
                  "Use as default payment method",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.iconAndTitleColor),
                ),
              ],
            ),
            AppElevatedButton(
              text: "ADD CARD",
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(width(context) / 10),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
