import 'package:flutter/material.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/generated/l10n.dart';

class AuthTextField extends StatelessWidget {
  final TextEditingController controller;
  final Icon? suffixIcon;
  final bool obscureText;

  const AuthTextField({
    super.key,
    required this.controller,
    required this.suffixIcon,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        labelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(26),
          borderSide: const BorderSide(
            color: AppColors.greyLight,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.dark,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(26),
          ),
        ),
        hintText: S.of(context).email0,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
