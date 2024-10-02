
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/colors.dart';
import '../provider/calc.dart';

class Button1 extends StatelessWidget {
  const Button1(
      {super.key, required this.label, this.textColor = Colors.white});

  final String label;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Provider.of<CalculatorProvider>(context, listen: false)
          .setValue(label),
      child: Material(
        elevation: 3,
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(50),
        child: CircleAvatar(
          radius: 36,
          backgroundColor: AppColors.secondary2Color,
          child: Text(
            label,
            style: TextStyle(
                color: textColor, fontSize: 32, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
