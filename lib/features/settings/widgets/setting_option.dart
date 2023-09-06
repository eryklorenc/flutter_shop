import 'package:flutter/material.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';

class SettingOption extends StatelessWidget {
  final Icon icon;
  final String title;
  final VoidCallback onTap;
  const SettingOption({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          title,
          style: const TextStyle(
            color: AppColors.dark,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      trailing: IconButton(
        onPressed: onTap,
        icon: const Icon(
          Icons.arrow_forward_ios,
          color: AppColors.dark,
          size: 28,
        ),
      ),
    );
  }
}
