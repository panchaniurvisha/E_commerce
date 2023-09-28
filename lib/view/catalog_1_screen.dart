import 'package:flutter/material.dart';

import '../res/commen/mediaquery/app_mediaquery.dart';
import '../res/constant/app_colors.dart';

class CatalogOneScreen extends StatefulWidget {
  const CatalogOneScreen({super.key});

  @override
  State<CatalogOneScreen> createState() => _CatalogOneScreenState();
}

class _CatalogOneScreenState extends State<CatalogOneScreen> {
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
    );
  }
}
