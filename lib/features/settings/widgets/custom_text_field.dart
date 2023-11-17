import 'package:flutter/material.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final Icon suffixIcon;
  final TextEditingController controller;
  final bool obscureText;

  const CustomTextField({
    super.key,
    required this.text,
    required this.suffixIcon,
    required this.controller,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: text,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: AppColors.dark,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: AppColors.dark,
          ),
        ),
        suffixIcon: suffixIcon,
      ),
      obscureText: obscureText,
    );
  }
}
