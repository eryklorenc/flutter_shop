import 'package:flutter/material.dart';
import 'package:flutter_shop/features/home/widgets/recommended_card.dart';

class MenButtonContent extends StatelessWidget {
  const MenButtonContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RecommendedCard(
            image: AssetImage('assets/clothes1.jpg'),
            name: 'Black Pants',
            price: '24€',
          ),
          SizedBox(
            width: 5,
          ),
          RecommendedCard(
            image: AssetImage('assets/clothes2.jpg'),
            name: 'Black Hoodie',
            price: '15€',
          ),
          SizedBox(
            width: 5,
          ),
          RecommendedCard(
            image: AssetImage('assets/clothes3.jpg'),
            name: 'Venom Hoodie',
            price: '26€',
          ),
          SizedBox(
            width: 5,
          ),
          RecommendedCard(
            image: AssetImage('assets/clothes4.jpg'),
            name: 'Flame Hoodie',
            price: '10€',
          ),
          SizedBox(
            width: 5,
          ),
          RecommendedCard(
            image: AssetImage('assets/clothes5.jpg'),
            name: 'Beige Hoodie',
            price: '40€',
          ),
        ],
      ),
    );
  }
}
