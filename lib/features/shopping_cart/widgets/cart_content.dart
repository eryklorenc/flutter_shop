import 'package:flutter/material.dart';
import 'package:flutter_shop/app/core/theme/app_colors.dart';
import 'package:flutter_shop/app/core/theme/app_text_theme_extension.dart';

class CartContent extends StatelessWidget {
  const CartContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white3,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              height: 180,
              width: 150,
              child: Image.asset(
                'assets/start.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hoodie',
                  style: Theme.of(context).xTextTheme.h4,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 3, bottom: 25),
                  child: Text(
                    '€130.99',
                    style: Theme.of(context).xTextTheme.titleLight,
                  ),
                ),
                Text(
                  'Size: S',
                  style: Theme.of(context).xTextTheme.h4,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80, top: 40),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          color: AppColors.dark,
                        ),
                      ),
                      Text(
                        '1',
                        style: Theme.of(context).xTextTheme.h4,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.remove,
                          color: AppColors.dark,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
