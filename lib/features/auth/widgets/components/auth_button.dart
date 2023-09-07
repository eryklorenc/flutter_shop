import 'package:flutter/material.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';

class AuthButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String accountInfo;
  final String sign;

  const AuthButton({
    super.key,
    required this.onPressed,
    required this.accountInfo,
    required this.sign,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            accountInfo,
            style: const TextStyle(
              color: AppColors.dark,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            sign,
            style: const TextStyle(
              color: AppColors.primary,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
