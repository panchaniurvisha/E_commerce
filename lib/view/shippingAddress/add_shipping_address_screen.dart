import 'package:e_commerce/res/commen/app_elevated_button.dart';
import 'package:e_commerce/res/commen/app_textfield.dart';
import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:e_commerce/res/constant/app_colors.dart';
import 'package:e_commerce/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

class AddShippingAddressScreen extends StatefulWidget {
  const AddShippingAddressScreen({super.key});

  @override
  State<AddShippingAddressScreen> createState() =>
      _AddShippingAddressScreenState();
}

class _AddShippingAddressScreenState extends State<AddShippingAddressScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();
  TextEditingController countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          "Adding Shipping Address",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: AppColors.iconAndTitleColor),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width(context) / 30),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: height(context) / 40),
              child: AppTextField(
                labelText: "Full name",
                controller: nameController,
              ),
            ),
            AppTextField(
              labelText: "Address",
              controller: addressController,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height(context) / 40),
              child: AppTextField(
                labelText: "City",
                controller: cityController,
              ),
            ),
            AppTextField(
              labelText: "State/Province/Region",
              controller: stateController,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height(context) / 40),
              child: AppTextField(
                labelText: "Zip Code (Postal Code)",
                controller: zipCodeController,
              ),
            ),
            AppTextField(
              labelText: "Country",
              controller: countryController,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: height(context) / 30),
              child: AppElevatedButton(
                onPressed: () => Navigator.of(context, rootNavigator: true)
                    .pushNamed(RoutesName.successScreen),
                text: "SAVE ADDRESS",
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(width(context) / 10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
