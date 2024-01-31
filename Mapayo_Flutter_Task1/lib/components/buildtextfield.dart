import 'package:flutter/material.dart';

class BuildTextField extends StatelessWidget {
  const BuildTextField({
    Key? key,
    required this.txtController,
    required this.hintTextVal,
    required this.isPassword,
    this.icon, // Add an optional icon parameter
  }) : super(key: key);

  final TextEditingController txtController;
  final String hintTextVal;
  final bool isPassword;
  final Icon? icon; // Define an optional icon parameter

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      child: TextField(
        controller: txtController,
        obscureText: isPassword,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hintTextVal,
          prefixIcon: icon, // Use the icon as a prefix icon
        ),
      ),
    );
  }
}
