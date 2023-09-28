import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String? text;
  const AppButton({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white)),
        child: Text(text!));
  }
}
