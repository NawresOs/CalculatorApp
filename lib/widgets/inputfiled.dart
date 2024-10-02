import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      child: TextField(
        controller: controller,
        style: TextStyle(fontSize: 50),
        readOnly: true,
        autofocus: true,
        showCursor: true,
        decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: AppColors.primaryColor,
            filled: true),
      ),
    );
  }
}
