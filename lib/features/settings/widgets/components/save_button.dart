import 'package:flutter/material.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/generated/l10n.dart';

class SaveButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SaveButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(200, 48),
        backgroundColor: AppColors.black,
      ),
      child: Text(
        S.of(context).save,
        style: const TextStyle(
          fontSize: 16,
          color: AppColors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
