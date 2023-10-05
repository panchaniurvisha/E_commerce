import 'dart:io';

import 'package:e_commerce/res/commen/app_elevated_button.dart';
import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:e_commerce/res/constant/app_colors.dart';
import 'package:e_commerce/view/taking_photo_search_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../res/constant/app_images.dart';

class VisualSearchScreen extends StatefulWidget {
  const VisualSearchScreen({super.key});

  @override
  State<VisualSearchScreen> createState() => _VisualSearchScreenState();
}

class _VisualSearchScreenState extends State<VisualSearchScreen> {
  final ImagePicker picker = ImagePicker();
  XFile? cameraImage;
  File? image;

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
          "Visual search",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: AppColors.iconAndTitleColor),
        ),
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [Image.asset(AppImages.backGroundImage)],
          ),
          Positioned(
            top: height(context) / 6,
            left: width(context) / 20,
            right: width(context) / 20,
            child: const Text(
              "Search for an outfit by \ntaking a photo or uploading an image",
              style: TextStyle(
                fontSize: 24,
                color: AppColors.iconAndTitleColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Positioned(
            top: height(context) / 3.1,
            left: width(context) / 20,
            right: width(context) / 20,
            child: AppElevatedButton(
              onPressed: () async {
                cameraImage =
                    await picker.pickImage(source: ImageSource.camera);
                debugPrint("Pick image -------->> ${cameraImage!.path}");
                debugPrint("Pick image name -------->> ${cameraImage!.name}");
                image = File(cameraImage!.path);
                setState(() {});
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        TakingPhotoSearchScreen(image: image!),
                  ),
                );
              },
              text: "TAKE A PHOTO",
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(width(context) / 10),
                ),
              ),
            ),
          ),
          Positioned(
            left: width(context) / 20,
            right: width(context) / 20,
            child: AppElevatedButton(
              backgroundColor: MaterialStateProperty.all(
                Colors.transparent,
              ),
              text: "UPLOAD AN IMAGE",
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  side: const BorderSide(
                    color: AppColors.iconAndTitleColor,
                  ),
                  borderRadius: BorderRadius.circular(width(context) / 10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
