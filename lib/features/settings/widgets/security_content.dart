import 'package:flutter/material.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';

class SecurityContent extends StatelessWidget {
  final VoidCallback onTap;
  final Icon icon;
  final String title;
  final Widget leading;

  const SecurityContent({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.title,
    required this.leading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: leading,
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
