import 'package:flutter/material.dart';

class RecommendedCard extends StatelessWidget {
  final AssetImage image;
  const RecommendedCard({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image(
              image: image,
              width: 100,
              height: 140,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Orange Hoodie ',
            style: Theme.of(context).textTheme.titleSmall,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          Text(
            "30€",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
