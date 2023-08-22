import 'package:flutter/material.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';

class SizeSelection extends StatelessWidget {
  final String size;

  const SizeSelection({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.grey2,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        size,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
