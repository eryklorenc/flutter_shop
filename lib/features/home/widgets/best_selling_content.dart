import 'package:flutter/material.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/features/home/widgets/best_product.dart';

class BestSellingContent extends StatelessWidget {
  const BestSellingContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const BestProduct(
          product: 'Orange Hoodie',
          price: "50€",
          image: AssetImage('assets/start1.jpg'),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15),
          child: BestProduct(
            product: 'Red Handbag',
            price: '5€',
            image: AssetImage('assets/start.jpg'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 5,
          ),
          child: Text(
            'See More',
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
