import 'package:e_commerce/res/commen/app_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../res/commen/app_elevated_button.dart';
import '../../res/commen/mediaquery/app_mediaquery.dart';
import '../../res/constant/app_colors.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController dateOfBirthController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController repeatNewPasswordController = TextEditingController();
  List<bool> switchValue = List.generate(3, (index) => false);

  List<Widget> listOfRow() {
    List<String> data = [
      "Sales",
      "New arrivals",
      "Delivery status changes",
    ];

    return List.generate(
      3,
      (index) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            data[index],
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: AppColors.iconAndTitleColor,
            ),
          ),
          CupertinoSwitch(
            value: switchValue[index],
            trackColor: switchValue[index]
                ? AppColors.textFieldFillColor
                : AppColors.textFieldFillColor,
            activeColor: AppColors.suffixIconColor,
            // activeColor: AppColors.suffixIconColor,
            thumbColor: AppColors.switchButtonColor,
            onChanged: (value) {
              debugPrint("value---->$value");
              setState(() {});
              switchValue[index] = value;
            },
          ),
        ],
      ),
    );
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
              child:
                  const Icon(Icons.search, color: AppColors.iconAndTitleColor),
            ),
          ],
          centerTitle: true),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width(context) / 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Settings",
              style: TextStyle(
                color: AppColors.iconAndTitleColor,
                fontSize: 34,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Text(
              "Personal Information",
              style: TextStyle(
                color: AppColors.iconAndTitleColor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            AppTextField(
              controller: nameController,
              labelText: "Full name",
            ),
            AppTextField(
                controller: dateOfBirthController, labelText: "Date of Birth"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Password",
                  style: TextStyle(
                    color: AppColors.iconAndTitleColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                InkWell(
                  child: const Text(
                    "Change",
                    style: TextStyle(
                      color: AppColors.labelTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onTap: () {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                        isDismissible: true,
                        context: context,
                        builder: (context) => showModelBottomSheet());
                  },
                ),
              ],
            ),
            AppTextField(controller: passwordController, labelText: "Password"),
            const Text(
              "Notification",
              style: TextStyle(
                color: AppColors.iconAndTitleColor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            ...listOfRow()
          ],
        ),
      ),
    );
  }

  showModelBottomSheet() {
    return Container(
      height: height(context) / 1.9,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.backGroundColor,
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
            Padding(
              padding: EdgeInsets.only(bottom: height(context) / 90),
              child: const Center(
                child: Text(
                  "Password Change",
                  style: TextStyle(
                      color: AppColors.iconAndTitleColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            AppTextField(
              labelText: "Old Password",
              controller: oldPasswordController,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height(context) / 80),
              child: const Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  "Forgot Password? ",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.labelTextColor),
                ),
              ),
            ),
            AppTextField(
              labelText: "New Password",
              controller: newPasswordController,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height(context) / 80),
              child: AppTextField(
                labelText: "Expire Date",
                controller: repeatNewPasswordController,
              ),
            ),
            AppElevatedButton(
              text: "SAVE PASSWORD",
              onPressed: () => Navigator.pop(context),
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
