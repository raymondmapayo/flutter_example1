import 'package:flutter/material.dart';

class BuildButton extends StatelessWidget {
  const BuildButton({
    Key? key,
    required this.btnText,
    required this.btnColor,
    required this.onPressedData,
  }) : super(key: key);

  final String btnText;
  final Color btnColor;
  final VoidCallback onPressedData; // Change the type to VoidCallback

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
