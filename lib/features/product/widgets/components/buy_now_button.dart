import 'package:flutter/material.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/generated/l10n.dart';

class BuyNowButton extends StatelessWidget {
  const BuyNowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: ElevatedButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          child: Text(
            S.of(context).buy_now,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppColors.white,
                ),
          ),
        ),
      ),
    );
  }
}
