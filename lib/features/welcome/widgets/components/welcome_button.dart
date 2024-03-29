import 'package:flutter/material.dart';
import 'package:flutter_shop/app/core/theme/app_text_theme_extension.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/generated/l10n.dart';

class WelcomeButton extends StatelessWidget {
  final VoidCallback onPressed;

  const WelcomeButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        fixedSize: const Size(224, 48),
        backgroundColor: AppColors.primary,
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            S.of(context).get_started,
            style: Theme.of(context).xTextTheme.notification1,
          ),
        ],
      ),
    );
  }
}
