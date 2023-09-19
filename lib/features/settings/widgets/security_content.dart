import 'package:flutter/material.dart';
import 'package:flutter_shop/app/core/theme/app_text_theme_extension.dart';

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
        style: Theme.of(context).xTextTheme.h2,
      ),
      trailing: icon,
    );
  }
}
