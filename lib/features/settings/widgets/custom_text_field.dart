import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final Icon suffixIcon;
  const CustomTextField({
    super.key,
    required this.text,
    required this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: text,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        suffixIcon: suffixIcon,
      ),
      obscureText: true,
    );
  }
}
