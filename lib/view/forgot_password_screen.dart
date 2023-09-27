import 'package:e_commerce/res/commen/app_text_formfield.dart';
import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:e_commerce/res/constant/app_colors.dart';
import 'package:flutter/material.dart';

import '../res/commen/app_elevated_button.dart';
import '../res/constant/app_string.dart';
import '../utils/utils.dart';

class ForGotPasswordScreen extends StatefulWidget {
  const ForGotPasswordScreen({super.key});

  @override
  State<ForGotPasswordScreen> createState() => _ForGotPasswordScreenState();
}

class _ForGotPasswordScreenState extends State<ForGotPasswordScreen> {
  TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  Utils utils = Utils();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(right: width(context) / 20),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              color: AppColors.iconAndTitleColor,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
                horizontal: width(context) / 40, vertical: height(context) / 50)
            .copyWith(bottom: height(context) / 15),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                AppString.forgotPassword,
                style: TextStyle(
                  color: AppColors.iconAndTitleColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 34,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: height(context) / 10, bottom: height(context) / 50),
                child: const Text(
                  AppString.enterEmail,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.iconAndTitleColor,
                  ),
                ),
              ),
              AppTextFormField(
                controller: emailController,
                labelText: AppString.labelOfEmail,
                keyboardType: TextInputType.emailAddress,
                validator: (value) => utils.isValidEmail(emailController.text)
                    ? null
                    : AppString.errorEmailTitle,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: height(context) / 15,
                ),
                child: AppElevatedButton(
                    text: AppString.send,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pop(context);
                      }
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
