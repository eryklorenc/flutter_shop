import 'package:flutter/material.dart';

class BestSellingContent extends StatelessWidget {
  const BestSellingContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const Image(
                  image: AssetImage('assets/start1.jpg'),
                  width: 150,
                  height: 200,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Orange Hoodie',
                style: Theme.of(context).textTheme.titleSmall,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Text(
                "50€",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const Image(
                  image: AssetImage('assets/start.jpg'),
                  width: 150,
                  height: 200,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                'Red Handbag',
                style: Theme.of(context).textTheme.titleSmall,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Text(
                "5€",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}