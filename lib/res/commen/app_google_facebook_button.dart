import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:flutter/material.dart';

class AppGoogleFaceBookButton extends StatelessWidget {
  final String? icon;
  final String? image;

  const AppGoogleFaceBookButton({super.key, this.icon, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: height(context) / 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(width(context) / 15)),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: height(context) / 40,
                  horizontal: width(context) / 10.5),
              child: Image.asset(icon!, height: height(context) / 30),
            ),
          ),
          SizedBox(width: width(context) / 20),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(width(context) / 15)),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: height(context) / 40,
                  horizontal: width(context) / 10.5),
              child: Image.asset(image!, height: height(context) / 30),
            ),
          ),
        ],
      ),
    );
  }
}
