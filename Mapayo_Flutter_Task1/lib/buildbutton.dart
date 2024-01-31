import 'package:flutter/material.dart';

class BuildButton extends StatelessWidget {
  const BuildButton(
      {super.key,
      required this.btnText,
      required this.btnColor,
      required this.onPressedData});

  final String btnText;
  final Color btnColor;
  final dynamic onPressedData;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressedData,
      style: ElevatedButton.styleFrom(
        backgroundColor: btnColor,
        minimumSize: const Size.fromHeight(50),
      ),
      child: Text(btnText),
    );
  }
}
