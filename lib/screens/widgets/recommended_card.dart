import 'package:flutter/material.dart';

class RecommendedCard extends StatelessWidget {
  const RecommendedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Image(
            image: AssetImage('assets/start1.jpg'),
            width: 100,
            height: 140,
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
