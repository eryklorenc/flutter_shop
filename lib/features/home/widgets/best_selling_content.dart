import 'package:flutter/material.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/features/home/widgets/best_product.dart';
import 'package:flutter_shop/generated/l10n.dart';

class BestSellingContent extends StatelessWidget {
  const BestSellingContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BestProduct(
          product: S.of(context).orange_hoodie,
          price: S.of(context).price1,
          image: const AssetImage('assets/start1.jpg'),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: BestProduct(
            product: S.of(context).red_handbag,
            price: S.of(context).price2,
            image: const AssetImage('assets/start.jpg'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 5,
          ),
          child: Text(
            S.of(context).see_more,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppColors.dark,
                ),
          ),
        ),
        const Icon(
          Icons.arrow_forward_ios_outlined,
          size: 10,
          color: AppColors.dark,
        ),
      ],
    );
  }
}
