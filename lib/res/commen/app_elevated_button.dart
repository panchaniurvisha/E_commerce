import 'package:e_commerce/res/commen/mediaquery/app_mediaquery.dart';
import 'package:e_commerce/res/constant/app_colors.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  final void Function()? onPressed;
  final String? text;
  final double? fontSize;
  final Color? color;
  final Color? borderColor;
  final MaterialStateProperty<OutlinedBorder?>? shape;
  final FontWeight? fontWeight;
  final MaterialStateProperty<EdgeInsetsGeometry?>? padding;
  final MaterialStateProperty<Size?>? minimumSize;
  final MaterialStateProperty<Color?>? backgroundColor;
  static final MaterialStateProperty<EdgeInsetsGeometry?> defaultPadding =
      MaterialStateProperty.all(const EdgeInsets.all(16.0));
  const AppElevatedButton({
    super.key,
    this.onPressed,
    this.text,
    this.minimumSize,
    this.fontSize,
    this.fontWeight,
    this.padding,
    this.color,
    this.backgroundColor,
    this.borderColor,
    this.shape,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed ?? () {},
      style: ButtonStyle(
          shape: shape ??
              MaterialStateProperty.all(
                RoundedRectangleBorder(
                  side: BorderSide(
                      color: borderColor ?? AppColors.elevatedButtonColor,
                      width: 1),
                  borderRadius: BorderRadius.circular(width(context) / 30),
                ),
              ),
          backgroundColor: backgroundColor ??
              MaterialStateProperty.all(AppColors.elevatedButtonColor),
          minimumSize: minimumSize ??
              MaterialStateProperty.all(
                Size(width(context) / 1, height(context) / 16),
              ),
          padding: padding ?? defaultPadding),
      child: Text(
        text ?? "",
        style: TextStyle(
            fontSize: fontSize ?? 14,
            fontWeight: FontWeight.w500,
            color: color ?? AppColors.primarySwitchColor),
      ),
    );
  }
}
