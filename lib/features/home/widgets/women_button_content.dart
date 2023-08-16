import 'package:flutter/material.dart';
import 'package:flutter_shop/features/home/widgets/recommended_card.dart';

class WomenButtonContent extends StatelessWidget {
  const WomenButtonContent({
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
            image: AssetImage('assets/clothesW3.jpg'),
            name: 'Black Pants',
            price: '20€',
          ),
          SizedBox(
            width: 20,
          ),
          RecommendedCard(
            image: AssetImage('assets/clothesW1.jpg'),
            name: 'Colorful Hoodie',
            price: '35€',
          ),
          SizedBox(
            width: 20,
          ),
          RecommendedCard(
            image: AssetImage('assets/clothesW2.jpg'),
            name: 'Black Hoodie',
            price: '28€',
          ),
          SizedBox(
            width: 20,
          ),
          RecommendedCard(
            image: AssetImage('assets/clothesW3.jpg'),
            name: 'Black T-shirt',
            price: '10€',
          ),
          SizedBox(
            width: 20,
          ),
          RecommendedCard(
            image: AssetImage('assets/clothesW1.jpg'),
            name: 'Hoodie',
            price: '30€',
          ),
        ],
      ),
    );
  }
}
