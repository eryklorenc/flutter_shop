import 'package:flutter/material.dart';
import 'package:flutter_shop/features/home/widgets/recommended_card.dart';
import 'package:flutter_shop/gen/assets.gen.dart';
import 'package:flutter_shop/generated/l10n.dart';

class MenButtonContent extends StatelessWidget {
  const MenButtonContent({
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
            image: Assets.clothes1.image().image,
            name: S.of(context).black_pants,
            price: S.of(context).price7,
          ),
          space,
          RecommendedCard(
            image: Assets.clothes2.image().image,
            name: S.of(context).black_hoodie,
            price: S.of(context).price8,
          ),
          space,
          RecommendedCard(
            image: Assets.clothes3.image().image,
            name: S.of(context).venom_hoodie,
            price: S.of(context).price9,
          ),
          space,
          RecommendedCard(
            image: Assets.clothes4.image().image,
            name: S.of(context).flame_hoodie,
            price: S.of(context).price5,
          ),
        ],
      ),
    );
  }
}
