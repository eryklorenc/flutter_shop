import 'package:flutter/material.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';

class SecurityContent extends StatelessWidget {
  final VoidCallback onTap;
  final Icon icon;
  final String title;

  const SecurityContent({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: const Icon(
        Icons.lock_outline,
        color: AppColors.dark,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          color: AppColors.dark,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: icon,
    );
  }
}
