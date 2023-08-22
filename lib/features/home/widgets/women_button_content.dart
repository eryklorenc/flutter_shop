import 'package:flutter/material.dart';
import 'package:flutter_shop/features/home/widgets/recommended_card.dart';
import 'package:flutter_shop/generated/l10n.dart';

class WomenButtonContent extends StatelessWidget {
  const WomenButtonContent({
    super.key,
  });

  final Widget space = const SizedBox(width: 20);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RecommendedCard(
            image: const AssetImage('assets/clothesW3.jpg'),
            name: S.of(context).black_pants,
            price: S.of(context).price2,
          ),
          space,
          RecommendedCard(
            image: const AssetImage('assets/clothesW1.jpg'),
            name: S.of(context).colorful_hoodie,
            price: S.of(context).price3,
          ),
          space,
          RecommendedCard(
            image: const AssetImage('assets/clothesW2.jpg'),
            name: S.of(context).black_hoodie,
            price: S.of(context).price4,
          ),
          space,
          RecommendedCard(
            image: const AssetImage('assets/clothesW3.jpg'),
            name: S.of(context).black_t_shirt,
            price: S.of(context).price5,
          ),
          space,
          RecommendedCard(
            image: const AssetImage('assets/clothesW1.jpg'),
            name: S.of(context).hoodie,
            price: S.of(context).price6,
          ),
        ],
      ),
    );
  }
}
