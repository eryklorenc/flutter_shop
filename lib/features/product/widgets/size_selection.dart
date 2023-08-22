import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/features/product/cubit/product_cubit.dart';

class SizeSelection extends StatelessWidget {
  final String size;

  const SizeSelection({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    final isSizeSelected = context.watch<ProductCubit>().isSizeSelected(size);
    return GestureDetector(
      onTap: () {
        context.read<ProductCubit>().selectSize(size);
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSizeSelected ? AppColors.dark : Colors.transparent,
          border: Border.all(
            color: isSizeSelected ? AppColors.dark : AppColors.greyLight,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          size,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: isSizeSelected ? AppColors.white : AppColors.grey,
              ),
        ),
      ),
    );
  }
}
