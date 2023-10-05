import 'dart:io';
import 'dart:typed_data';

import 'package:cropperx/cropperx.dart';
import 'package:e_commerce/res/constant/app_colors.dart';
import 'package:flutter/material.dart';

import '../res/commen/mediaquery/app_mediaquery.dart';
import '../res/constant/app_images.dart';

class TakingPhotoSearchScreen extends StatefulWidget {
  final File? image;

  const TakingPhotoSearchScreen({
    super.key,
    this.image,
  });

  @override
  State<TakingPhotoSearchScreen> createState() =>
      _TakingPhotoSearchScreenState();
}

class _TakingPhotoSearchScreenState extends State<TakingPhotoSearchScreen> {
  final GlobalKey _cropperKey = GlobalKey(debugLabel: 'cropperKey');
  Uint8List? croppedImage;
  //int _rotationTurns = 0;

  OverlayType _overlayType = OverlayType.circle;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.image != null) {
      Cropper(
        cropperKey: _cropperKey,
        overlayType: _overlayType,
        image: Image.file(widget.image!),
        onScaleStart: (details) {
          // todo: define started action.
        },
        onScaleUpdate: (details) {
          // todo: define updated action.
        },
        onScaleEnd: (details) {
          // todo: define ended action.
        },
      );
    }
  }

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
          "Search by taking a photo",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: AppColors.iconAndTitleColor),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          widget.image != null
              ? Image.file(
                  widget.image!,
                  fit: BoxFit.cover,
                  height: height(context) / 1.3,
                )
              : const Center(
                  child: Text(
                    "No Image available",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                ),
          Row(
            children: [
              Wrap(
                spacing: 16,
                children: [
                  ElevatedButton(
                    child: const Text('Crop image'),
                    onPressed: () async {
                      final imageBytes = await Cropper.crop(
                        cropperKey: _cropperKey,
                      );

                      if (imageBytes != null) {
                        setState(() {
                          croppedImage = imageBytes;
                        });
                      }
                    },
                  ),
                  ElevatedButton(
                    child: const Text('Switch overlay'),
                    onPressed: () {
                      setState(() {
                        _overlayType = _overlayType == OverlayType.circle
                            ? OverlayType.grid
                            : _overlayType == OverlayType.grid
                                ? OverlayType.rectangle
                                : OverlayType.circle;
                      });
                    },
                  ),
                  // IconButton(
                  //   onPressed: () {
                  //     setState(() => _rotationTurns--);
                  //   },
                  //   icon: const Icon(Icons.rotate_left),
                  // ),
                  // IconButton(
                  //   onPressed: () {
                  //     setState(() => _rotationTurns++);
                  //   },
                  //   icon: const Icon(Icons.rotate_right),
                  // ),
                ],
              ),
              Center(
                  child: Image.asset(AppImages.searchButton,
                      height: height(context) / 20)),
            ],
          ),
        ],
      ),
    );
  }
}
