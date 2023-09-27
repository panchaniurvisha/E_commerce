import 'package:e_commerce/res/commen/app_elevated_button.dart';
import 'package:e_commerce/res/commen/app_textfield.dart';
import 'package:e_commerce/res/constant/app_string.dart';
import 'package:e_commerce/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

import '../../res/commen/app_google_facebook_button.dart';
import '../../res/commen/mediaquery/app_mediaquery.dart';
import '../../res/constant/app_colors.dart';
import '../../res/constant/app_images.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passWordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(right: width(context) / 20),
          child: const Icon(
            Icons.arrow_back_ios_rounded,
            color: AppColors.iconAndTitleColor,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
                horizontal: width(context) / 40, vertical: height(context) / 50)
            .copyWith(bottom: height(context) / 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                AppString.login,
                style: TextStyle(
                  color: AppColors.iconAndTitleColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 34,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height(context) / 15),
              child: AppTextField(
                labelText: AppString.labelOfEmail,
                controller: emailController,
              ),
            ),
            AppTextField(
              labelText: AppString.labelOfPassword,
              controller: passWordController,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  AppString.forgetPassword,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.iconAndTitleColor),
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(
                      context, RoutesName.forGotPasswordScreen),
                  splashColor: Colors.transparent,
                  child: const Icon(
                    Icons.arrow_right_alt_rounded,
                    color: AppColors.elevatedButtonColor,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: height(context) / 30,
              ),
              child: AppElevatedButton(
                text: AppString.loginButtonText,
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                    context, RoutesName.bottomScreen, (route) => false),
              ),
            ),
            const Spacer(),
            const Text(
              AppString.loginWithSocial,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.iconAndTitleColor),
            ),
            const AppGoogleFaceBookButton(
              image: AppImages.faceBookButton,
              icon: AppImages.googleButton,
            ),
          ],
        ),
      ),
    );
  }
}
