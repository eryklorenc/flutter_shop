import 'package:flutter/material.dart';
import 'package:flutter_shop/features/home/widgets/recommended_card.dart';
import 'package:flutter_shop/generated/l10n.dart';

class MenButtonContent extends StatelessWidget {
  const MenButtonContent({
    super.key,
  });

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
            image: const AssetImage('assets/clothes1.jpg'),
            name: S.of(context).black_pants,
            price: S.of(context).price7,
          ),
          const SizedBox(
            width: 20,
          ),
          RecommendedCard(
            image: const AssetImage('assets/clothes2.jpg'),
            name: S.of(context).black_hoodie,
            price: S.of(context).price8,
          ),
          const SizedBox(
            width: 20,
          ),
          RecommendedCard(
            image: const AssetImage('assets/clothes3.jpg'),
            name: S.of(context).venom_hoodie,
            price: S.of(context).price9,
          ),
          const SizedBox(
            width: 20,
          ),
          RecommendedCard(
            image: const AssetImage('assets/clothes4.jpg'),
            name: S.of(context).flame_hoodie,
            price: S.of(context).price5,
          ),
        ],
      ),
    );
  }
}
